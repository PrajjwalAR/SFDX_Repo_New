/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class B2BCmexCreateGroupInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexCreateGroupInvocable() {

    }
    @InvocableMethod(label='Create Group' description='The API name of the record type.')
    global static List<vlocity_cmt.B2BCmexCreateGroupInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexCreateGroupInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Check Async Job Status' description='A Boolean value that indicates whether to check for running asynchronous jobs before creating group.' required=true)
    global Boolean checkAsyncJobStatus;
    @InvocableVariable(label='Current Members Count' description='The current number of members.' required=false)
    global Integer currentMembersCount;
    @InvocableVariable(label='Expected Member Count' description='The expected number of members.' required=false)
    global Integer expectedMembersCount;
    @InvocableVariable(label='Group Name' description='The name of the group to create.' required=true)
    global String groupName;
    @InvocableVariable(label='Members' description='A comma-separated list of member IDs.' required=false)
    global List<String> members;
    @InvocableVariable(label='Member Type' description='The type of members.' required=true)
    global String memberType;
    @InvocableVariable(label='Quote Id' description='The ID of the quote.' required=true)
    global String quoteId;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error Message' description='A message explaining why the data couldn’t be fetched.' required=false)
    global String error;
    @InvocableVariable(label='Quote Group' description='The created quote group record.' required=false)
    global vlocity_cmt__QuoteGroup__c quoteGroup;
    global ActionOutput() {

    }
}
}
