trigger ContactRollUpSummary on Contact (after insert,after update) {
    if(Trigger.isUpdate && Trigger.isAfter)
    {
         ContactRollUpSummaryHandler.rollupCountList(Trigger.old);
    }
    if((Trigger.isInsert || Trigger.isUpdate)&& Trigger.isAfter){
        ContactRollUpSummaryHandler.rollupCountList(Trigger.new);
       }

}