public class pretrieveContacts{
  public list<contact> contactlist{get;set;}
  public pretrieveContacts(){
  
  contactlist=[Select Firstname, lastname,phone from contact];
  }
  }