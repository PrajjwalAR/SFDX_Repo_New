/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class B2BCmexAddMemQGInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexAddMemQGInvocable() {

    }
    @InvocableMethod(label='Add Members to Quote Group' description='Adds quote members to a specific quote group.')
    global static List<vlocity_cmt.B2BCmexAddMemQGInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexAddMemQGInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Check Async Job Status' description='A Boolean value that indicates whether to check for running asynchronous jobs before adding members.' required=true)
    global Boolean checkAsyncJobStatus;
    @InvocableVariable(label='Quote Group ID' description='The ID of the quote group to add members to.' required=true)
    global String quoteGroupId;
    @InvocableVariable(label='Quote ID' description='The ID of the quote.' required=true)
    global String quoteId;
    @InvocableVariable(label='Quote Members' description='A list of member information to add to the group.' required=true)
    global List<String> quoteMembers;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error Message' description='A message explaining why the operation failed.' required=false)
    global String errorMessage;
    @InvocableVariable(label='Is Success' description='A Boolean value that indicates whether the operation succeeded.' required=false)
    global Boolean isSuccess;
    @InvocableVariable(label='Quote Group ID' description='The ID of the quote group where members were added.' required=false)
    global String quoteGroupId;
    global ActionOutput() {

    }
}
global class MemberDetails {
    @InvocableVariable(label='Member ID' description='The ID of the quote member.' required=true)
    global String Id;
    global MemberDetails() {

    }
    global MemberDetails(String memberId) {

    }
}
}
