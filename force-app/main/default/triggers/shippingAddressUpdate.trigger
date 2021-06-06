trigger shippingAddressUpdate on Account(before insert, before update){

for(Account acc : Trigger.new){

acc.ShippingState = acc.BillingState;
acc.ShippingStreet = acc.BillingStreet;
acc.ShippingCountry = acc.BillingCountry;
acc.ShippingCity = acc.BillingCity;
}
}