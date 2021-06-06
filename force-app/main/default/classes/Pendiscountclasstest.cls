@isTest
public class Pendiscountclasstest {
       static TestMethod Void  ApplyDiscounttest(){
           Pen__c Varp = new pen__c();
           Varp.Name='Parkernew';
           Varp.price__c=300;
           insert Varp;
           system.debug('Var p'+Varp);
     
          
    
    Pen__c Varp1= new pen__c();
    Varp1 =[Select price__c from pen__c where Id=:Varp.id];
           system.debug('' +Varp1);
           System.assertEquals(295,Varp1.Price__c);
       }
}