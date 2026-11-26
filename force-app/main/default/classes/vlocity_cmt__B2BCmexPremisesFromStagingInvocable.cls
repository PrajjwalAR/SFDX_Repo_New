/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class B2BCmexPremisesFromStagingInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexPremisesFromStagingInvocable() {

    }
    @InvocableMethod(label='Create Premises From Staging' description='Creates a Premises for each staging line item whose location did not match, reusing an existing Premises with the same address, and links each row to it.')
    global static List<vlocity_cmt.B2BCmexPremisesFromStagingInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexPremisesFromStagingInvocable.ActionInput> inputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Check Async Job Status' description='Set to false to skip the concurrent async job check for this quote. Defaults to true.' required=false)
    global Boolean checkAsyncJobStatus;
    @InvocableVariable(label='Quote ID' description='The ID of the quote whose staging line items need Premises.' required=true)
    global String quoteId;
    @InvocableVariable(label='Staging Record IDs' description='Optional list of StagingLineItem__c ids to process. If empty, all eligible rows under the quote are processed.' required=false)
    global List<String> stagingRecordIds;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Created Count' description='Number of new Premises created this run.' required=false)
    global Integer createdCount;
    @InvocableVariable(label='Error Message' description='A message explaining why the operation failed.' required=false)
    global String error;
    @InvocableVariable(label='Failed Count' description='Number of staging rows whose Premises could not be created; each row keeps the reason in its error message.' required=false)
    global Integer failedCount;
    @InvocableVariable(label='Is Success' description='Whether the operation completed successfully.' required=false)
    global Boolean isSuccess;
    @InvocableVariable(label='Linked Existing Count' description='Number of staging rows linked to a pre-existing Premises with the same address (deduplicated).' required=false)
    global Integer linkedExistingCount;
    @InvocableVariable(label='Processed Staging IDs' description='StagingLineItem__c ids linked to a Premises this run.' required=false)
    global List<String> processedStagingIds;
    @InvocableVariable(label='Skipped Count' description='Number of staging rows in scope that are still awaiting location matching and were left unchanged.' required=false)
    global Integer skippedCount;
    @InvocableVariable(label='Warning' description='Why rows were skipped or failed, worded as in the staging grid. Empty when every row in scope was processed.' required=false)
    global String warning;
}
}
