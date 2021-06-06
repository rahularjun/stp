({
   
    
    //Open URL in New Browser Tab With Record Id
    handleOpenNewWindowWithRecordId : function(component, event, helper) {
        var recordId = component.get('v.recordId');
        window.open('/' + recordId,'_blank');
    }
})