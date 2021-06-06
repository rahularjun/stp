({
	getinput:function(component, event, helper) {
		var varFirstname=component.find("Fname").get("v.value");
        console.log(varFirstname);
        var varLastname=component.find("Lname").get("v.value");
        var varoutputelement=component.find("outputtodisplay");
      varoutputelement.set("v.value",+varFirstname+','+varLastname);
	}
})