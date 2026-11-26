/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class B2BCmexAssetToQuoteInBatchInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexAssetToQuoteInBatchInvocable() {

    }
    @InvocableMethod(label='Asset To Quote In Batch' description='Triggers the Asset-to-Quote batch pipeline that converts assets to quote line items and creates quote members.')
    global static List<vlocity_cmt.B2BCmexAssetToQuoteInBatchInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexAssetToQuoteInBatchInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Account ID' description='The ID of the account that owns the assets.' required=true)
    global String accountId;
    @InvocableVariable(label='Account to Quote Member Field Map' description='A JSON object mapping Account fields to Quote Member fields for member creation.' required=true)
    global String accountToQuoteMemberFieldMap;
    @InvocableVariable(label='Assets' description='A JSON array of asset objects. Each object must contain an Id field and may optionally contain a products array with attribute configurations.' required=true)
    global String assets;
    @InvocableVariable(label='ATQ Batch Size' description='The number of assets to process per batch in Batch 1. The default value is 3.' required=false)
    global Integer atqBatchSize;
    @InvocableVariable(label='Check Async Job Status' description='Whether to block the enqueue if another async job is already running on this quote. Defaults to true (the guard fires) when left unset, protecting the quote from concurrent mutation. Set to false to bypass the guard for callers that intentionally chain after other async work.' required=false)
    global Boolean checkAsyncJobStatus;
    @InvocableVariable(label='Create QM Batch Size' description='The number of assets to process per batch in Batch 2 for Quote Member creation. The default value is 100.' required=false)
    global Integer createQmBatchSize;
    @InvocableVariable(label='Quote ID' description='The ID of the Enterprise Quote to add assets to.' required=true)
    global String quoteId;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Batch Job ID' description='The ID of the enqueued Apex batch job.' required=false)
    global String batchJobId;
    @InvocableVariable(label='Error Message' description='An error due to which the batch job could not be submitted.' required=false)
    global String error;
    @InvocableVariable(label='Success Message' description='A message indicating the batch job was submitted successfully.' required=false)
    global String successMessage;
    global ActionOutput() {

    }
}
}
