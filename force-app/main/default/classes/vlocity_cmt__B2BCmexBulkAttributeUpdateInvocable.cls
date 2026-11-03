/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class B2BCmexBulkAttributeUpdateInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexBulkAttributeUpdateInvocable() {

    }
    @InvocableMethod(label='Update Attributes in Bulk' description='Updates attributes on multiple quote line items asynchronously, and returns an asyncJobId for status polling.')
    global static List<vlocity_cmt.B2BCmexBulkAttributeUpdateInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexBulkAttributeUpdateInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Async Job Status Check' description='Optional. A Boolean value that indicates whether to check for running asynchronous jobs on the quote before starting the update. The default value is true.' required=false)
    global Boolean checkAsyncJobStatus;
    @InvocableVariable(label='Pricing Recalculation' description='Optional. A Boolean value that indicates whether pricing is recalculated after the attribute write. The default value is true.' required=false)
    global Boolean price;
    @InvocableVariable(label='Quote ID' description='The ID of the quote whose line-item attributes are being updated.' required=true)
    global String quoteId;
    @InvocableVariable(label='Updates JSON' description='A JSON array of update objects. Each object requires rootQuoteLineItemId, quoteLineItemId, and an attributes array of { attributeCode, value }.' required=true)
    global String updates;
    @InvocableVariable(label='Run Validation' description='Optional. A Boolean value that indicates whether validation needs to be run. The default value is true.' required=false)
    global Boolean validate;
    @InvocableVariable(label='Post-Update Cart Validation' description='Optional. A Boolean value that indicates whether the cart is validated after the attribute write. The default value is true. When the cart is invalid, the chunk fails and isn't copied back. Set to false to copy back regardless of validation errors.' required=false)
    global Boolean validateCartAfterUpdate;
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
