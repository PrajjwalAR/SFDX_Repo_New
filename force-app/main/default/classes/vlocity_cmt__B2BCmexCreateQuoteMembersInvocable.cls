/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class B2BCmexCreateQuoteMembersInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexCreateQuoteMembersInvocable() {

    }
    @InvocableMethod(label='Create Quote Members' description='Bulk-creates quote members on a quote with optional duplicate checking.')
    global static List<vlocity_cmt.B2BCmexCreateQuoteMembersInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexCreateQuoteMembersInvocable.ActionInput> inputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Check Async Job Status' description='Set to false to skip the concurrent async job check for this quote. Defaults to true.' required=false)
    global Boolean checkAsyncJobStatus;
    @InvocableVariable(label='Check Duplicate' description='Flag to enable duplicate checking against existing quote members.' required=false)
    global Boolean checkDuplicate;
    @InvocableVariable(label='Duplicate Check Fields' description='List of field API names used to build a composite key for deduplication.' required=false)
    global List<String> duplicateCheckFields;
    @InvocableVariable(label='Members' description='JSON array string of member objects with field API names as keys.' required=true)
    global String members;
    @InvocableVariable(label='Quote ID' description='The ID of the quote to add members to.' required=true)
    global String quoteId;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Created Quote Members' description='The quote members created or upserted by the operation.' required=false)
    global List<vlocity_cmt__QuoteMember__c> createdQuoteMembers;
    @InvocableVariable(label='Error Message' description='A message explaining why the operation failed.' required=false)
    global String error;
    @InvocableVariable(label='Is Success' description='Whether the operation completed successfully.' required=false)
    global Boolean isSuccess;
    @InvocableVariable(label='Skipped Duplicate Count' description='Number of members skipped due to duplicate detection.' required=false)
    global Integer skippedDuplicateCount;
}
}
