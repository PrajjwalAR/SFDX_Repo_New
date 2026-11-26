/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class B2BCmexMacdAssetProdMatchInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexMacdAssetProdMatchInvocable() {

    }
    @InvocableMethod(label='Match Asset Products (MACD)' description='Launches product (catalog) matching for a MACD quote's location-matched staging rows asynchronously, and returns a processId for status polling.')
    global static List<vlocity_cmt.B2BCmexMacdAssetProdMatchInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexMacdAssetProdMatchInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    global Boolean checkAsyncJobStatus;
    @InvocableVariable(label='Quote ID' description='The ID of the MACD quote whose location-matched staging rows are matched to catalog products.' required=true)
    global Id quoteId;
    @InvocableVariable(label='Staging Line Item IDs' description='Optional. A subset of StagingLineItem__c IDs to process. When empty, every location-matched row under the quote is processed.' required=false)
    global List<Id> stagingIds;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error Message' description='An error message if the launch was rejected.' required=false)
    global String error;
    @InvocableVariable(label='Status Message' description='A human-readable status message.' required=false)
    global String message;
    @InvocableVariable(label='Process ID' description='The async process ID for status polling.' required=false)
    global String processId;
    @InvocableVariable(label='Is Success' description='A Boolean value that indicates whether the matching batch was launched.' required=false)
    global Boolean success;
    global ActionOutput() {

    }
}
}
