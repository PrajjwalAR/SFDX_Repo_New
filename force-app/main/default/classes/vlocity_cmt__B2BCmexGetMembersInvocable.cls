/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class B2BCmexGetMembersInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexGetMembersInvocable() {

    }
    @InvocableMethod(label='Get Quote Members' description='Gets Quote Members.')
    global static List<vlocity_cmt.B2BCmexGetMembersInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexGetMembersInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Check Async Job Status' description='A Boolean value that indicates whether to check for running asynchronous jobs before fetching members.' required=true)
    global Boolean checkAsyncJobStatus;
    @InvocableVariable(label='Fields' description='Comma-separated list of fields to return' required=false)
    global String fields;
    @InvocableVariable(label='Filters' description='Additional filters formatted as a JSON string.' required=false)
    global String filters;
    @InvocableVariable(label='Group By Field' description='The field name to group results by.' required=false)
    global String groupByField;
    @InvocableVariable(label='Include' description='The include option, for example, defaultFields or allFields.' required=false)
    global String include;
    @InvocableVariable(label='Offset' description='The offset used to fetch member data.' required=false)
    global String offset;
    @InvocableVariable(label='Page Size' description='The number of members to fetch.' required=false)
    global String pageSize;
    @InvocableVariable(label='Quote ID' description='The ID of the quote to get members for.' required=true)
    global String quoteId;
    @InvocableVariable(label='Search By Fields' description='A comma-separated list of fields to search in.' required=false)
    global String searchByFields;
    @InvocableVariable(label='Search Text' description='The text to search for in members.' required=false)
    global String searchText;
    @InvocableVariable(label='Sort By Field' description='The field name to sort the results by.' required=false)
    global String sortByField;
    @InvocableVariable(label='Sort Direction' description='The sort direction, for example, ASC or DESC.' required=false)
    global String sortDirection;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error Message' description='A message explaining why the data couldn’t be fetched.' required=false)
    global String error;
    @InvocableVariable(label='Quote Members' description='A list of quote members.' required=false)
    global List<vlocity_cmt__QuoteMember__c> members;
    @InvocableVariable(label='Output Message' description='A message containing the details of the output.' required=false)
    global String message;
    global ActionOutput() {

    }
}
}
