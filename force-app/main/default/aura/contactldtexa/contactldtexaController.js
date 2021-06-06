({
	fetchcontactnew : function(component, event, helper) {
       component.set('v.mycolumns', [
            {label: 'Contact lastName', fieldName: 'LastName', type: 'text'},
              
                {label: 'Phone', fieldName: 'Phone', type: 'Phone'},
                {label: 'Email', fieldName: 'Email', type: 'Email '}
            ]);
        var action = component.get("c.fetchcontactnew");
        action.setParams({
        });
        action.setCallback(this, function(response){
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.conList", response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
    }
})