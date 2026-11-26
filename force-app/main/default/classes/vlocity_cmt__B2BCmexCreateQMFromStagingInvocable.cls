/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class B2BCmexCreateQMFromStagingInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexCreateQMFromStagingInvocable() {

    }
    @InvocableMethod(label='Create Quote Members From Staging' description='Creates Quote Members from matched staging line items and stamps the created member id back onto each row.')
    global static List<vlocity_cmt.B2BCmexCreateQMFromStagingInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexCreateQMFromStagingInvocable.ActionInput> inputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Check Async Job Status' description='Set to false to skip the concurrent async job check for this quote. Defaults to true.' required=false)
    global Boolean checkAsyncJobStatus;
    @InvocableVariable(label='Quote ID' description='The ID of the quote to create members on.' required=true)
    global String quoteId;
    @InvocableVariable(label='Staging Record IDs' description='Optional list of StagingLineItem__c ids to process. If empty, all eligible rows under the quote are processed.' required=false)
    global List<String> stagingRecordIds;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Created Count' description='Number of new Quote Members created this run.' required=false)
    global Integer createdCount;
    @InvocableVariable(label='Error Message' description='A message explaining why the operation failed.' required=false)
    global String error;
    @InvocableVariable(label='Is Success' description='Whether the operation completed successfully.' required=false)
    global Boolean isSuccess;
    @InvocableVariable(label='Linked Existing Count' description='Number of staging rows linked to a pre-existing Quote Member (deduplicated).' required=false)
    global Integer linkedExistingCount;
    @InvocableVariable(label='Processed Staging IDs' description='StagingLineItem__c ids stamped with a Quote Member id this run.' required=false)
    global List<String> processedStagingIds;
    @InvocableVariable(label='Skipped Count' description='Number of staging rows in scope that were not ready for this step and were left unchanged.' required=false)
    global Integer skippedCount;
    @InvocableVariable(label='Warning' description='Why rows were skipped or failed, worded as in the staging grid. Empty when every row in scope was processed.' required=false)
    global String warning;
}
}
