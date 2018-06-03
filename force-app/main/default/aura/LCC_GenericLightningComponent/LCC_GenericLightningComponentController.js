({
    
    handleRecordUpdated: function(component, event, helper) {
        var eventParams = event.getParams();
        if(eventParams.changeType === "LOADED") {
           // record is loaded (render other component which needs record data value)
            console.log("Record is loaded successfully.");
            helper.loadUserInfo(component, function(){
                helper.loadProfileInfo(component, function(){
                    helper.loadSiteInfo(component, function(){
                        var appEvent = $A.get("e.c:LCC_GenericApplicationEvent")
            			appEvent.fire();
                    });
                });
            });
                   
        }  else if(eventParams.changeType === "ERROR") {
            // there’s an error while loading, saving, or deleting the record
            console.error("fail loading the record");
        }
    },
 // for Hide/Close Model,set the "isOpen" attribute to "Fasle" 
   closeModel: function(component, event, helper) { 
      component.set("v.isOpen", false);
   },
      // set set the "isOpen" attribute to "False for close the model Box.
   okClose: function(component, event, helper) {
      component.set("v.isOpen", false);
   },
})