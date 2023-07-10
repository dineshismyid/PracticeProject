trigger AccountFieldRequired on Account (before Update) {

    if(Trigger.isUpdate && Trigger.isBefore)
    {
        AccountFieldRequiredHandler.fieldReqiredUpdate(Trigger.new,Trigger.oldmap);
    }

}