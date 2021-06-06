trigger Pendiscount on Pen__c (before insert) {
    PenDiscountClass.ApplyDiscount(trigger.new);

}