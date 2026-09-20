/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class B2BCmexBulkPriceUpdateInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexBulkPriceUpdateInvocable() {

    }
    @InvocableMethod(label='Update Prices in Bulk' description='Updates prices on multiple quote line items asynchronously, and returns an asyncJobId for status polling.')
    global static List<vlocity_cmt.B2BCmexBulkPriceUpdateInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexBulkPriceUpdateInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Async Job Status Check' description='Optional. A Boolean value that indicates whether to check for running asynchronous jobs on the quote before starting the update. The default value is true.' required=false)
    global Boolean checkAsyncJobStatus;
    @InvocableVariable(label='Quote ID' description='The ID of the quote whose line-item prices are being updated.' required=true)
    global String quoteId;
    @InvocableVariable(label='Updates JSON' description='A JSON array of update objects. Each object requires rootQuoteLineItemId, quoteLineItemId, and a pricingData map of { <fieldApiName>: <absolutePrice> }.' required=true)
    global String updates;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Async Job ID' description='The batch job ID for status polling.' required=false)
    global String asyncJobId;
    @InvocableVariable(label='Error Message' description='An error message if the request was rejected.' required=false)
    global String error;
    @InvocableVariable(label='Status Message' description='A human-readable status message.' required=false)
    global String message;
    @InvocableVariable(label='Quote ID' description='The ID of the quote.' required=false)
    global String quoteId;
    @InvocableVariable(label='Request Status' description='The status of the request. Valid values are ACCEPTED when queued and FAILED on envelope-level rejection.' required=false)
    global String status;
    @InvocableVariable(label='Is Success' description='A Boolean value that indicates whether the request was accepted and the asynchronous job was queued.' required=false)
    global Boolean success;
    global ActionOutput() {

    }
}
}
