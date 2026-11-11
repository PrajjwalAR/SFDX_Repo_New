/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class B2BCmexProdLocUpdLineItemInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexProdLocUpdLineItemInvocable() {

    }
    @InvocableMethod(label='Update Quote Line Items by Location' description='Applies validated attributes to a quote's matched merge quote line items asynchronously, and returns a process ID for status polling.')
    global static List<vlocity_cmt.B2BCmexProdLocUpdLineItemInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexProdLocUpdLineItemInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    global Boolean checkAsyncJobStatus;
    @InvocableVariable(label='Quote ID' description='The ID of the quote whose matched merge line items have their validated attributes applied.' required=true)
    global Id quoteId;
    @InvocableVariable(label='Staging Line Item IDs' description='Optional. A subset of StagingLineItem__c IDs to process. When empty, every eligible Merge row under the quote is processed.' required=false)
    global List<Id> stagingLineItemIds;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error Message' description='An error message if the request was rejected.' required=false)
    global String errorMessage;
    @InvocableVariable(label='Is Success' description='A Boolean value that indicates whether the attribute update was enqueued.' required=false)
    global Boolean isSuccess;
    @InvocableVariable(label='Process ID' description='The asynchronous job ID for status polling.' required=false)
    global String processId;
    @InvocableVariable(label='Status Message' description='A human-readable status message.' required=false)
    global String statusMessage;
    global ActionOutput() {

    }
}
}
