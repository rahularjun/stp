public class c4 {
    string msg='Hi this is my first vf page';
    account a;
    
        public string getmsg(){
            return msg;
        }
    public account geta(){
        return a;
    }
    public pageReference showinfo(){
         a=[select name,industry,phone,type from account where name='thinqloud'];
        return null;
    }
    

}