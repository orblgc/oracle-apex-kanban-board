apex.jQuery( apex.gPageContext$ ).on( "apexreadyend", function( e ) {
    $('.s-g-container').each(function(){
        kanban.initialize('#'+this.id,this.getAttribute('dropitemajax'),this.getAttribute('dropgroupajax'))
    });
} ); 


var kanban = (function ($) {
    var kanbancount = $('.s-g-container').length
    var initialized = false;
    /* get model */
    
    return {
        initialize: function ( parentID,dropitemajax,dropgroupajax) {
            
            var drakeItems = null;
            var drakeGroups = null;
            var lastItemsData = [];
            kanbancount -= 1;

            if (initialized){
                return; 
            } 
            initialized = kanbancount == 0 ? true:false;
            var parent = $( parentID);
            let tc$ = parent.find('.kb-group-container').parent();
            let viewInstance = tc$.tableModelView('instance');
            let model = tc$.tableModelView('getModel');
            
            //model.setOption('editable',true)

            function relocate(itemsToFind,sourceItemIndex){
                parent = $( parentID);
                $(parentID).find(itemsToFind?itemsToFind:'[relocationneed]').each(function(){
                    var $itemContainer = $(this);
                    
                    var colId = $itemContainer.attr('datastatus'); 
                    var dataid = $itemContainer.attr('data-id'); 
                    
                    var groupid = null;
                    

                    if(colId){
                        var $group;
                        /* Not needed because model.setRecord using instead of overwrite behaviour */
                        /*var cardData = lastItemsData.filter(function(e) {
                            return e.id == dataid
                        });
                        if(cardData?.length > 0 ){
                            colId = cardData[0].status;
                            groupid = cardData[0].groupid;
                            $group = parent.find('[data-group-id="'+groupid+'"]');
                        }
                        else{
                            $group = $itemContainer.closest('.reportgroup');
                        } */
                        
                        var dataGroupId = model.getRecordValue(dataid,'APEX$CONTROL_BREAK_VALUE')
                        $group = parent.find('[data-group-id='+dataGroupId+']')
                        var $targetRegion = ($group && $group.length)
                            ? $group.find('.kb-item-container[datastatus="' + colId + '"]')
                            : parent.find('.kb-item-container[datastatus="' + colId + '"]');
                        
                        if($targetRegion.length){
                            
                            var $children = $targetRegion.children();
                            if ($children.length > sourceItemIndex) {
                                $itemContainer.insertBefore($children.eq(sourceItemIndex));
                            } else {
                                $targetRegion.append($itemContainer);
                            }

                            

                            var cardicon = $(parentID).find('[parentheaderid="'+colId+'"]').attr('card-icon');
                            var cardcolor = $(parentID).find('[parentheaderid="'+colId+'"]').attr('card-icon-color');

                            var $icon = $(this).find('.card-header > i');

                            if (!$icon.hasClass('specific_icon')) {
                                $icon.addClass(cardicon);
                            }
                            
                            var $cardHeader = $(this).find('.card-header');

                            if (!$cardHeader.hasClass('specific_color')) {
                                $cardHeader.css('background', cardcolor);
                            }
                            
                            $itemContainer.removeAttr('relocationneed')
                            $itemContainer.css('display', '');
                        }
                    }
                    
                });
                
            }

            /* model.subscribe( {
                onChange: function( changeType, change ) {
                    console.log(changeType,change)
                    relocate()
                },
            } );  */

            relocate();
            
            addDragulaToItems();
            addDragulaToGroups();
            $(parentID).on( "tablemodelviewpagechange", function( event, data ) {
                relocate();
                if (drakeItems) {
                    drakeItems.destroy();
                }
                if (drakeGroups) {
                    drakeGroups.destroy();
                }
                addDragulaToItems();
                addDragulaToGroups();
                
            } );

            function addDragulaToItems() {

                var sourceItemIndex = 0;
                var sourceItemSibling = null;
                drakeItems = dragula($(parent.find('.kb-item-container')).toArray(), {
                    direction: 'vertical',
                    revertOnSpill: true, 
                    accepts: function (el, target, source, sibling) {
                        //if (configJSON.allowDragItemsBetweenGroups) {
                            return true;
                        //}
                        return $(source).closest('.kb-row').attr("data-group-id") == $(target).closest('.kb-row').attr("data-group-id");
                    }
                });
                $(parent).find('.kb-items').each(function() {
                    var dataId = $(this).attr('data-id');
                    var status = $(this).attr('datastatus');
                    var groupid = $(this).closest('.reportgroup').attr('data-group-id');
                    // If id not exist in lastItemsData then add
                    if (dataId && !lastItemsData?.some(item => item.id === dataId)) {
                        lastItemsData.push({
                            "id": dataId,
                            "status": status,
                            "groupid":groupid
                        });
                    }
                });
                

                var containers = Array.from(document.querySelectorAll('.kb-item-container'));
                var scroll = autoScroll(
                    [window].concat(containers),
                    {
                        maxSpeed: 15,
                        margin: 150,
                        pixels: 7,
                        scrollWhenOutside: true,
                        autoScroll: function(){
                            return this.down && drakeItems.dragging;
                        }
                    }
                );

                /*                    
                On mobile this prevents the default page scrolling while dragging an item. 
                https://github.com/bevacqua/dragula/issues/487
                */
                parent.find(".kb-group-container").on('click', '.kb-collapsable', function(event) {
                    console.log($(this).parent().find(".card-footer"))
                    toggleGroup($(this).parent(), true);
                });
                parent.find('.kb-item-container').on('touchmove', '.kb-items', function(event) {
                    event.preventDefault();
                });

                drakeItems.on("drag", function (el, source) {
                    var _el = $(el);
                    var _source = $(source);

                    sourceItemIndex = _el.index();
                    var next = _el.next();
                    sourceItemSibling = next.length > 0 ? $(next[0]) : null;

                    var cardData = lastItemsData.filter(function(e) {
                        
                        return e.id == _el.attr("data-id")
                    });

                    if(cardData.length == 0){
                        apex.message.clearErrors();
                        apex.message.showErrors( [
                            {
                                type:       "error",
                                location:   [ "page"],
                                message:    apex.lang.getMessage('SYSTEM_MANIPULATION_DETECTED'),
                                unsafe:     false
                            }
                        ] );
                        $(parent[0]).remove();
                        return;
                    }

                    var dragData = {
                        "itemId": _el.attr("data-id"),
                        "sourceGroupId": _source.closest('.kb-row').attr("data-group-id"),
                        "sourceColumnId": _source.attr("datastatus"),
                        "sourceItemIndex": sourceItemIndex
                    };
                    parent.trigger('kanbandrag', [dragData]);
                });
                drakeItems.on("drop", function (el, target, source, sibling) {
                    var _el = $(el);
                    var _target = $(target);
                    var _source = $(source);

                    var dropData = {
                        "itemId": _el.attr("data-id"),
                        "sourceGroupId": _source.closest('.kb-row').attr("data-group-id"),
                        "sourceColumnId": _source.attr("datastatus"),
                        "sourceItemIndex": sourceItemIndex,
                        "targetGroupId": _target.closest('.kb-row').attr("data-group-id"),
                        "targetColumnId": _target.attr("datastatus"),
                        "targetItemIndex": _el.index()
                    };

                    var cardData = lastItemsData.filter(function(e) {
                        return e.id == _el.attr("data-id")
                    });

                    if(cardData.length == 0){
                        apex.message.clearErrors();
                        apex.message.showErrors( [
                            {
                                type:       "error",
                                location:   [ "page"],
                                message:    apex.lang.getMessage('SYSTEM_MANIPULATION_DETECTED'),
                                unsafe:     false
                            }
                        ] );
                        $(parent[0]).remove();
                        return;
                    }
                    
                    /* console.log("moved item " +
                        dropData.itemId + " from " +
                        dropData.sourceGroupId + "/" +
                        dropData.sourceColumnId + "/" + 
                        dropData.sourceItemIndex + " to " +
                        dropData.targetGroupId + "/" +
                        dropData.targetColumnId + "/" + 
                        dropData.targetItemIndex
                    ); */
                    if(dropitemajax){
                        try {
                            apex.server.process(dropitemajax, 
                                {
                                    x01: dropData.itemId,
                                    x02: dropData.sourceGroupId,
                                    x03: dropData.sourceColumnId,
                                    x04: dropData.sourceItemIndex,
                                    x05: dropData.targetGroupId,
                                    x06: dropData.targetColumnId,
                                    x07: dropData.targetItemIndex
                                }, {
                                    success: function (d) {
                                        if(d.success){
                                            parent.trigger('kanbanafterdrop', [dropData]);
                                        }
                                        else{
                                            /* if (sourceItemSibling) {
                                                _el.insertBefore(sourceItemSibling);
                                            } else {
                                                _source.append(_el);
                                            }  */

                                            updateCardHeader(_el, dropData,true);
                                            relocate('[data-id='+dropData.itemId+']',sourceItemIndex);
                                            dropData.sqlcode = d.sqlcode;
                                            parent.trigger('kanbandroperror', [dropData]);
                                        }
                                        /* model.addChangesToSaveRequest(model.getChanges());
                                        model.save(); */
                                    },
                                    error: function (d) {
                                        /* if (sourceItemSibling) {
                                            _el.insertBefore(sourceItemSibling);
                                        } else {
                                            _source.append(_el);
                                        } */
                                        updateCardHeader(_source, dropData,true);
                                        relocate('[data-id='+dropData.itemId+']',sourceItemIndex);
                                        parent.trigger('kanbandroperror', [dropData]);
                                    },
                                    dataType: "json"
                                });
                        } catch (e) {
                        }
                    }
                    
                    updateCardHeader(_el, dropData);

                    parent.trigger('kanbandrop', [dropData]);
                    
                });
            }

            function updateCardHeader(_card,dropData,err) {
                
                var new_groupid = dropData.targetGroupId;
                var sourceGroupId = dropData.sourceGroupId;
                var cardid =  dropData.itemId;

                var groupid
                var new_status;

                if (err){
                    new_status = dropData.sourceColumnId;
                    groupid = dropData.sourceGroupId;
                } else{
                    groupid = dropData.targetGroupId;
                    new_status = dropData.targetColumnId;
                }

                var cardicon = $(parentID).find('[parentheaderid="'+new_status+'"]').attr('card-icon');
                var cardcolor = $(parentID).find('[parentheaderid="'+new_status+'"]').attr('card-icon-color');
                var $cardHeader = _card.find('.card-header');
                var $iconElement = $cardHeader.find('i');

                _card.attr('datastatus', new_status);

                if (!$iconElement.hasClass('specific_icon')) {
                    $iconElement.attr('class', '');
                    $iconElement.addClass('fa ' + cardicon);
                }

                if (!$cardHeader.hasClass('specific_color')) {
                    $cardHeader.css('background', cardcolor);
                }
                
                _card.removeClass('gu-transit');
                _card.attr('relocationneed','')
                var cardid = dropData.itemId;
                var modelnewvalue = _card[0].outerHTML;

                /* Update model in order to keep changes for pagination changes.
                    Also, if ajax defined and user trying to refresh the page before saving finished, 
                    then user gets page unsaved browser warning as default apex behaviour. 
                */
                
                model.setOption('editable',true)
                model.setRecordValue(cardid,'APEX$ROW_CONTENT',modelnewvalue);
                sourceGroupId != new_groupid?
                    model.setRecordValue(cardid,'APEX$CONTROL_BREAK_VALUE',groupid):null;
                model.setOption('editable',false)
                model.clearChanges()
                
                //console.log(model.getChanges())
                //console.log(model.getRecord(cardid))
                

                lastItemsData.forEach(function(e) {
                    if (e.id == cardid) {
                        e.status = new_status; // example "IN_PROGRESS"
                        e.groupid = new_groupid;
                    }
                });
                
                
            }


            function addDragulaToGroups() {

                var sourceItemIndex = 0;
                var sourceItemSibling = null;

                drakeGroups = dragula($(parent.find('.kb-group-container')).toArray(), {
                    direction: 'vertical',
                    revertOnSpill: true, 
                    moves: function (el, container, handle) {
                        var groupcard = $(handle).closest('.kb-group-card');
                        return groupcard.length > 0;
                    }
                });

                var containers = Array.from(document.querySelectorAll('.kb-group-container'));
                var scroll = autoScroll(
                    [window].concat(containers),
                    {
                        maxSpeed: 15,
                        margin: 150,
                        pixels: 7,
                        scrollWhenOutside: true,
                        autoScroll: function(){
                            return this.down && drakeGroups.dragging;
                        }
                    }
                );
                /*                    
                On mobile this prevents the default page scrolling while dragging an item. 
                https://github.com/bevacqua/dragula/issues/487
                */
                $('.kb-group-region > .kb-card').each(function (index, card) {
                    /* $(card).addClass("kb-card-draggable"); */
                    card.addEventListener('touchmove', function (event) {
                        event.preventDefault();
                    });
                });


                drakeGroups.on("drag", function (el, source) {
                    var _el = $(el);
                    sourceItemIndex = _el.index();
                    var next = _el.next();
                    sourceItemSibling = next.length > 0 ? $(next[0]) : null;

                    var dragData = {
                        "groupId": _el.attr("data-group-id"),
                        "sourceGroupIndex": sourceItemIndex
                    };

                    /*
                    console.log("drag group " +
                        dragData.groupId + " from " +
                        dragData.sourceGroupIndex
                    );
                    */

                    parent.trigger('kanbandraggroup', [dragData]);
                });
                drakeGroups.on("drop", function (el, target, source, sibling) {
                    var _el = $(el);
                    var _target = $(target);
                    var _source = $(source);

                    var dropData = {
                        "groupId": _el.attr("data-group-id"),
                        "sourceGroupIndex": sourceItemIndex,
                        "targetGroupIndex": _el.index()
                    };

                    /*
                    console.log("moved group " +
                        dropData.groupId + " from " +
                        dropData.sourceGroupIndex + " to " +
                        dropData.targetGroupIndex
                    );
                    */
                    if(dropgroupajax){
                        try {
                            apex.server.process(dropgroupajax, 
                                {
                                    x01: dropData.groupId,
                                    x02: dropData.sourceGroupIndex,
                                    x03: dropData.targetGroupIndex
                                }, {
                                    success: function (d) {
                                        /*console.log(d);*/
                                        if(!d.success){
                                            if (sourceItemSibling) {
                                                _el.insertBefore(sourceItemSibling);
                                            } else {
                                                _source.append(_el);
                                            }
                                            //console.error(d.responseText);
                                            dropData.sqlcode = d.sqlcode;
                                            parent.trigger('kanbandropgrouperror', [dropData]);
                                        }
                                        else{
                                            parent.trigger('kanbanafterdropgroup', [dropData]);
                                        }
                                    },
                                    error: function (d) {
                                        /* move item back to last known position */
                                        if (sourceItemSibling) {
                                            _el.insertBefore(sourceItemSibling);
                                        } else {
                                            _source.append(_el);
                                        }
                                        parent.trigger('kanbandropgrouperror', [dropData]);
                                    },
                                    dataType: "json"
                                });
                        } catch (e) {
                        }
                    }
                    parent.trigger('kanbandropgroup', [dropData]);
                });
            }

            
            
            /* parent.find(".kb-group-card > .kb-collapsable").click(function () {
                console.log(this)
                toggleGroup(this, true);
            }); */
            
            function toggleGroup(groupRow, triggerEvent) {
                groupRow.find(".kb-collapsable").toggle();
                groupRow.find(".card-footer").toggle();
                groupRow.parent().parent().find(".kb-item-region").toggle();
                var group = groupRow.parent();
                group.toggleClass("kb-collapsed");

                if (triggerEvent) {
                    var collapsedData = {
                        "groupId": groupRow.attr("data-group-id"),
                        "collapsed": group.hasClass("kb-collapsed")
                    };
                    parent.trigger('kanbangroupcollapsed', [collapsedData]);
                }
            }
        }
    }
})(apex.jQuery);