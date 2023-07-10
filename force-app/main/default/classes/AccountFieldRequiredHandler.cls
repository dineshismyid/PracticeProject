public with sharing class AccountFieldRequiredHandler {
    public static void  fieldReqiredUpdate(List<Account> accnewlist,Map<Id,Account>oldacc) {
        if(!accnewlist.isEmpty())
        {
            for(Account acc:accnewlist)
            {
                if(acc.NoOfRelatedContact__c!=oldacc.get(acc.Id).NoOfRelatedContact__c){
                    acc.addError('cant edit field');
                }
            }
        }

    }
}