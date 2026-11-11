/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class B2BCmexCreateQLIFromStagingInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexCreateQLIFromStagingInvocable() {

    }
    @InvocableMethod(label='Create Quote Line Items From Staging' description='Creates Quote Line Items from matched staging line items (asynchronously) and queues the rows for write-back.')
    global static List<vlocity_cmt.B2BCmexCreateQLIFromStagingInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexCreateQLIFromStagingInvocable.ActionInput> inputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Check Async Job Status' description='Set to false to skip the concurrent async job check for this quote. Defaults to true.' required=false)
    global Boolean checkAsyncJobStatus;
    @InvocableVariable(label='Quote ID' description='The ID of the quote to create line items on.' required=true)
    global String quoteId;
    @InvocableVariable(label='Staging Record IDs' description='Optional list of StagingLineItem__c ids to process. If empty, all eligible rows under the quote are processed.' required=false)
    global List<String> stagingRecordIds;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Async Job ID' description='The batch job id created to add the products asynchronously.' required=false)
    global String asyncJobId;
    @InvocableVariable(label='Error Message' description='A message explaining why the operation failed.' required=false)
    global String error;
    @InvocableVariable(label='Is Success' description='Whether the batch was queued successfully.' required=false)
    global Boolean isSuccess;
    @InvocableVariable(label='Processed Staging IDs' description='StagingLineItem__c ids queued this run (write-back completes asynchronously).' required=false)
    global List<String> processedStagingIds;
    @InvocableVariable(label='Queued Count' description='Number of staging rows queued for line-item creation this run.' required=false)
    global Integer queuedCount;
    @InvocableVariable(label='Skipped Count' description='Number of staging rows in scope that were not ready for this step and were left unchanged.' required=false)
    global Integer skippedCount;
    @InvocableVariable(label='Warning' description='Why rows were skipped or failed, worded as in the staging grid. Empty when every row in scope was processed.' required=false)
    global String warning;
}
}
