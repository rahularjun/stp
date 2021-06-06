public class contactldtexa {
    
    public static list<contact>fetchcontact(){
        list<contact> conlist=[Select id,lastname,phone,email from contact limit 10];
        system.debug('conlist list is' +conlist);
            return conlist;
        
    }
}