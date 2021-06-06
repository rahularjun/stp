public class PenDiscountClass {
    public static void ApplyDiscount(list<pen__c>penlistnew){
        For(Pen__c P:penlistnew){
            if(p.price__c>=100){
                p.price__c=p.price__c-5;
                
            }
        }
        
    }
     

}