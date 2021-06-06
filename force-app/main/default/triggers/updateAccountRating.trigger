trigger updateAccountRating on opportunity(after insert)
{
Set<id> Accountid = new set<id>();
List <Account>acclist = new List <Account> ();
List <Account>acclistupdated = new List <Account> ();
if(trigger.new != null)
{
for(opportunity opp:trigger.new)
{
if(opp.StageName =='Closed Won')
{
AccountId.add(opp.AccountId);
}
}
}
acclist = [Select id,Rating from Account where id IN: AccountId];
if(acclist != null){
for(Account acc: acclist)
{
acc.Rating ='Hot';
acclistupdated.add(acc);
}
}
update acclist;
}