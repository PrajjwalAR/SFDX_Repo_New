/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class B2BCmexOfferConfigInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexOfferConfigInvocable() {

    }
    @InvocableMethod(label='Add Offer Configuration to Cart' description='Adds quote members and quote groups to the working cart.')
    global static List<vlocity_cmt.B2BCmexOfferConfigInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexOfferConfigInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Batch Size' description='The batch size assigned for processing.' required=false)
    global Integer batchSize;
    @InvocableVariable(label='Check Async Job Status' description='A Boolean value that indicates whether to check for running asynchronous jobs before adding members.' required=true)
    global Boolean checkAsyncJobStatus;
    @InvocableVariable(label='Async Processing' description='A Boolean value that indicates whether processing is asynchronous.' required=true)
    global Boolean isAsyncProcessing;
    @InvocableVariable(label='Member IDs' description='A list of quote member IDs.' required=false)
    global List<String> memberIds;
    @InvocableVariable(label='Quote Group Details' description='The details of the quote group, including the ID and the group size.' required=false)
    global List<vlocity_cmt.B2BCmexOfferConfigInvocable.QuoteGroupDetails> quoteGroupDetails;
    @InvocableVariable(label='Sales Quote ID' description='The ID of the sales quote.' required=true)
    global String quoteId;
    @InvocableVariable(label='Quote Member Binding Data' description='A JSON string containing the quote member binding data. For example, "{}" for an empty object.' required=false)
    global String QuoteMemberBindingData;
    @InvocableVariable(label='Working Cart ID' description='The ID of the working cart.' required=true)
    global String workingCartId;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Add Members Job ID' description='The ID of the asynchronous job created.' required=false)
    global String addMembersJobId;
    @InvocableVariable(label='Error Message' description='A message explaining why the operation failed.' required=false)
    global String errorMessage;
    @InvocableVariable(label='Success Message' description='The message returned when the operation is successful.' required=false)
    global String successMessage;
    global ActionOutput() {

    }
}
global class MemberIdDetail {
    @InvocableVariable(label='Member ID' description='Quote Member ID' required=false)
    global String Id;
    global MemberIdDetail() {

    }
    global MemberIdDetail(String memberId) {

    }
}
global class QuoteGroupDetails {
    @InvocableVariable(label='Group Size' description='The size of the group' required=false)
    global Integer GroupSize;
    @InvocableVariable(label='Quote Group ID' description='The ID of the Quote Group' required=false)
    global String Id;
    global QuoteGroupDetails() {

    }
    global QuoteGroupDetails(String id, Integer groupSize) {

    }
}
}
