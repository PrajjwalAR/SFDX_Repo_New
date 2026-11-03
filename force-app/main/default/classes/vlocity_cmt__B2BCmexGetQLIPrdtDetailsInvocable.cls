/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class B2BCmexGetQLIPrdtDetailsInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexGetQLIPrdtDetailsInvocable() {

    }
    @InvocableMethod(label='Get QLI Product and Attribute Details' description='Gets product and attribute details from Quote Line Items via the getQLIs API.')
    global static List<vlocity_cmt.B2BCmexGetQLIPrdtDetailsInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexGetQLIPrdtDetailsInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Check Async Job Status' description='A Boolean value that indicates whether to check for running asynchronous jobs before fetching the Quote Line Items.' required=false)
    global Boolean checkAsyncJobStatus;
    @InvocableVariable(label='Additional Fields' description='Additional QLI fields to return beyond the default set (Id, Product2.ProductCode, Product2.Name, AttributeSelectedValues__c).' required=false)
    global List<String> fields;
    @InvocableVariable(label='QLI IDs' description='List of Quote Line Item IDs to fetch. Either quoteId or qliIds must be provided.' required=false)
    global List<String> qliIds;
    @InvocableVariable(label='Quote ID' description='The ID of the quote. Either quoteId or qliIds must be provided.' required=false)
    global String quoteId;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error Message' description='A message explaining why the data could not be fetched.' required=false)
    global String error;
    @InvocableVariable(label='Quote Line Items' description='A list of Quote Line Items with product and attribute details.' required=false)
    global List<QuoteLineItem> quoteLineItems;
}
}
