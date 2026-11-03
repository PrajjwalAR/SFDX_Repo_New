/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class B2BCmexApplyConfigInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexApplyConfigInvocable() {

    }
    @InvocableMethod(label='Apply Config From Working Cart' description='Clones QLIs from a Working Cart to the Enterprise Cart along with related QLIs. Supports sync and async paths based on target count.')
    global static List<vlocity_cmt.B2BCmexApplyConfigInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexApplyConfigInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Apply Config Batch Threshold' description='Number of targets above which processing switches to async batch. Default is 5.' required=false)
    global Integer applyConfigBatchThreshold;
    @InvocableVariable(label='Clone Source ID Map' description='A JSON object mapping the RootItemId to the source QLI Id in the Working Cart. Example: {"rootItemId123":"sourceQliId456"}' required=false)
    global String cloneSourceIdMap;
    @InvocableVariable(label='Context Mapping' description='A JSON object for context mapping (e.g. QuoteMember field mappings). Optional.' required=false)
    global String contextMapping;
    @InvocableVariable(label='Root Item IDs' description='A JSON array of objects, each with an Id field representing the root QLI that was edited. Example: [{"Id":"0QLxx..."}]' required=true)
    global String rootItemIds;
    @InvocableVariable(label='Sales Quote ID' description='The ID of the Enterprise Quote (Sales Cart).' required=true)
    global String salesQuoteId;
    @InvocableVariable(label='Target Root Item IDs' description='A JSON array of target root QLI IDs to apply the configuration to. Example: ["0QLxx...","0QLxx..."]' required=false)
    global String targetRootItemIds;
    @InvocableVariable(label='Working Cart ID' description='The ID of the Working Cart (Group Cart) that contains the configured QLIs to apply.' required=true)
    global String workingCartId;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error Message' description='An error message explaining why the operation failed.' required=false)
    global String error;
    @InvocableVariable(label='Status' description='The status of the operation: success or failed.' required=false)
    global String status;
    @InvocableVariable(label='Success Message' description='A message indicating the operation completed successfully.' required=false)
    global String successMessage;
    global ActionOutput() {

    }
}
}
