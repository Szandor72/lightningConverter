public class LCC_JSMQueryResultService {
    
    @AuraEnabled
    public static List<sObject> executeQuery(String theQuery){
        try{
            return Database.query(theQuery);
        }catch(Exception e){
            throw new AuraHandledException('Error doing the query: '+theQuery+' Error: '+e.getMessage());
            
            
        }
        
    }
        
    @AuraEnabled
    public static sObject executeQueryOneObject(String theQuery){
        try{
            //String query = String.escapeSingleQuotes(theQuery);
            System.debug(theQuery);
            return Database.query(theQuery);
        }catch(Exception e){
            throw new AuraHandledException('Error doing the query: '+theQuery+' Error: '+e.getMessage());
            
            
        }
        
    }
        
    @AuraEnabled
    public static LCC_JSMUserInfo getUserInfo(){
        try{
            LCC_JSMUserInfo info = new LCC_JSMUserInfo();
            info.Id = Userinfo.getUserId();
            info.FirstName = Userinfo.getFirstName();
            info.LastName = Userinfo.getLastName();
            info.UserEmail = Userinfo.getUserEmail();
            return info;
        }catch(Exception e){
            throw new AuraHandledException(e.getMessage()); 
        }
        
    }
        
    @AuraEnabled
    public static Profile getProfileInfo(){
        try{
            String profileId = UserInfo.getProfileId();
            Profile profile = [SELECT Id, Name FROM Profile WHERE Id =:profileId];
            return profile;
        }catch(Exception e){
            throw new AuraHandledException(e.getMessage()); 
        }
    }
        
    @AuraEnabled
    public static LCC_JSMSiteInfo getSiteInfo(){
        try{
            LCC_JSMSiteInfo info = new LCC_JSMSiteInfo();
            info.Prefix = Site.getPathPrefix();
            info.Domain = Site.getDomain();
            info.Name = Site.getName();
            return info;
        }catch(Exception e){
            throw new AuraHandledException(e.getMessage()); 
        }
    }


}