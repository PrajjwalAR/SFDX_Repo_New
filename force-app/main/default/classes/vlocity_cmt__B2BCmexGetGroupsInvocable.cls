/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class B2BCmexGetGroupsInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexGetGroupsInvocable() {

    }
    @InvocableMethod(label='Get Quote Groups' description='Gets a list of quote groups.')
    global static List<vlocity_cmt.B2BCmexGetGroupsInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexGetGroupsInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Check Async Job Status' description='A Boolean value that indicates whether to check for running asynchronous jobs before fetching groups.' required=true)
    global Boolean checkAsyncJobStatus;
    @InvocableVariable(label='Offset' description='Offset to fetch the Groups Data' required=false)
    global String offset;
    @InvocableVariable(label='Page Size' description='Number of Groups to fetch' required=false)
    global String pageSize;
    @InvocableVariable(label='Quote ID' description='The ID of the quote to get the groups for.' required=true)
    global String quoteId;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error Message' description='A message explaining why the data couldn't be fetched.' required=false)
    global String error;
    @InvocableVariable(label='Output Message' description='A message containing the details of the output.' required=false)
    global String message;
    @InvocableVariable(label='Quote Groups' description='A list of quote groups.' required=false)
    global List<vlocity_cmt.B2BCmexGetGroupsInvocable.QuoteGroupInfo> quoteGroups;
    global ActionOutput() {

    }
}
global class QuoteGroupInfo {
    @InvocableVariable(label='Quote Group Name' description='The name of the quote group.' required=false)
    global String groupName;
    @InvocableVariable(label='Quote Group ID' description='The ID of the quote group.' required=false)
    global String quoteGroupId;
    global QuoteGroupInfo() {

    }
    global QuoteGroupInfo(String quoteGroupId, String groupName) {

    }
}
}
