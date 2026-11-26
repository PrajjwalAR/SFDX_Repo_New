/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class B2BCmexStagingToQuoteInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexStagingToQuoteInvocable() {

    }
    @InvocableMethod(label='Process Matched Staging Records' description='Creates Quote Line Items and Quote Members from matched root MACD staging records.')
    global static List<vlocity_cmt.B2BCmexStagingToQuoteInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexStagingToQuoteInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Check Async Job Status' description='Set to false to skip the concurrent async-job check. Defaults to true.' required=false)
    global Boolean checkAsyncJobStatus;
    @InvocableVariable(label='Quote ID' description='The Quote whose matched MACD staging records should be processed.' required=true)
    global String quoteId;
    @InvocableVariable(label='Staging Record IDs' description='Optional StagingLineItem__c IDs. When empty, all eligible rows for the Quote are processed.' required=false)
    global List<String> stagingRecordIds;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Batch Job ID' description='The enqueued Asset-to-Quote batch job ID.' required=false)
    global String batchJobId;
    @InvocableVariable(label='Error Message' description='Error details when submission fails.' required=false)
    global String error;
    @InvocableVariable(label='Is Success' description='Whether the staging records were submitted successfully.' required=false)
    global Boolean isSuccess;
    @InvocableVariable(label='Message' description='Submission status message.' required=false)
    global String message;
    global ActionOutput() {

    }
}
}
