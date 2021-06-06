trigger rollupsummary on contact( after insert,after delete,after undelete){
set <id>accidset=new set<id>();

     for(contact con:trigger.new){
     accidset.add(con.accountid);
     }
        for(contact con: trigger.old){
          accidset.add(con.accountid);
            } 

list<account>acclist= new list<account>();
acclist=[SELECT id,CONTACT_COUNT__c,(SELECT Id from contacts) from account where id IN:accidset];
for(account acc:acclist){
acc.CONTACT_COUNT__c=acc.contacts.size();
}
update acclist;
}