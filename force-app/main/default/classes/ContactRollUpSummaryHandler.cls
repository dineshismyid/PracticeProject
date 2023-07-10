public with sharing class ContactRollUpSummaryHandler {
    public static void  rollupCountList(List<contact> conlist ) {
         List<Account> acclistToUpdate=new List<Account>();
         Set<Id> setAccountId=new Set<Id>();
         List<Account> acccondata;
         for(Contact con : conlist){
            if(con.accountId!=null){
                setAccountId.add(con.accountId);
            }
         }
         if(!setAccountId.isEmpty()){
           acccondata=[select id,NoOfRelatedContact__c,(select id from contacts) from Account where id=:setAccountId];
         }
         if(!acccondata.isEmpty()){
            for(Account acc:acccondata)
            {
                if(!acc.contacts.isEmpty()){
                    acc.NoOfRelatedContact__c=acc.contacts.size();
                    acclistToUpdate.add(acc);
                    
                }
            }
         }
         if(!acclistToUpdate.isEmpty()){
            Update acclistToUpdate;
         }
    }
}