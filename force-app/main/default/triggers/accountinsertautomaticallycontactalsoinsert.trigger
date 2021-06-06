Trigger accountinsertautomaticallycontactalsoinsert on Account(After Insert){
    List<Contact> conlst = new List<Contact>();
    For(Account acc:Trigger.New){
       Contact con = New Contact();
       con.lastname = acc.name;
       con.accountid=acc.id;
       conlst.add(con);
    }
    insert conlst;
}