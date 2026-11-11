/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class B2BCmexAttributeValidationInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexAttributeValidationInvocable() {

    }
    @InvocableMethod(label='Validate Attributes' description='Launches attribute validation for a quote's eligible staging rows (MACD asset-matched or product location merge) asynchronously, and returns a process ID for status polling.')
    global static List<vlocity_cmt.B2BCmexAttributeValidationInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexAttributeValidationInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    global Boolean checkAsyncJobStatus;
    @InvocableVariable(label='Quote ID' description='The ID of the quote whose eligible staging rows (MACD asset-matched or product location merge) have their change-request attributes validated.' required=true)
    global Id quoteId;
    @InvocableVariable(label='Staging Line Item IDs' description='Optional. A subset of staging line item IDs to process. If left empty, all eligible rows under the quote are processed.' required=false)
    global List<Id> stagingLineItemIds;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error Message' description='An error message if the launch was rejected.' required=false)
    global String errorMessage;
    @InvocableVariable(label='Is Success' description='A Boolean value that indicates whether the matching batch was launched.' required=false)
    global Boolean isSuccess;
    @InvocableVariable(label='Process ID' description='The asynchronous process ID for status polling.' required=false)
    global String processId;
    @InvocableVariable(label='Status Message' description='A human-readable status message.' required=false)
    global String statusMessage;
    global ActionOutput() {

    }
}
}
