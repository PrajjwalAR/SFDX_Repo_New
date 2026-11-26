/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class B2BCmexProdLocQLIMatchInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexProdLocQLIMatchInvocable() {

    }
    @InvocableMethod(label='Match Quote Line Items by Location' description='Launches location matching for quote line items in a quote's merge staging rows asynchronously, and returns a process ID for status polling.')
    global static List<vlocity_cmt.B2BCmexProdLocQLIMatchInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexProdLocQLIMatchInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    global Boolean checkAsyncJobStatus;
    @InvocableVariable(label='Quote ID' description='The ID of the quote whose merge staging rows are matched against existing quote line items.' required=true)
    global Id quoteId;
    @InvocableVariable(label='Staging Line Item IDs' description='Optional. A subset of staging line item IDs to process. If left empty, all quote line item-eligible merge rows under the quote are processed.' required=false)
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
