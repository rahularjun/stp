public Class display{
    
    
    public Map<String,objectClass> customObjMap{get;set;}       
    public List<string> objectSet{get;set;}
    
    public display(){
        customObjMap  = new Map<String,objectClass> ();
        objectSet= new List<string>();    
        ObjectList();   
        objectSet.sort();
    }
    
    
    public void ObjectList(){
        for(Schema.SObjectType objTyp : Schema.getGlobalDescribe().Values()){                
            if(objTyp.getDescribe().isCustom()){
                objectSet.add(objTyp.getDescribe().getLabel());
                customObjMap.put(objTyp.getDescribe().getLabel(),new objectClass(objTyp.getDescribe().getKeyPrefix(),objTyp.getDescribe().getLabel()));                     
            }               
        }
        System.debug('***********objectSet***********'+objectSet);
    }
    
    
    
    public class objectClass{
    
        public string label{get;set;}
        public string keyPrefix{get;set;}
        
        public objectClass(string prefix,string api){
            this.label = api;
            this.keyPrefix = prefix;
            System.debug('*****************this.label***************'+this.label+'***********this.keyPrefix***********'+this.keyPrefix);
        }
    
    
    }
}