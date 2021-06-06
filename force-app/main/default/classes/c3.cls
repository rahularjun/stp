public class c3 {
    list<account> directacts=[select name,industry,phone, type from account where type='Customer - Direct' ];
        list<account> channelacts=[select name,industry,phone, type from account where type='Customer - channel' ];  
    public list<account> getdirectacts(){
        return directacts;
    }
     public list<account> getchannelacts(){
        return channelacts;

}
    
}