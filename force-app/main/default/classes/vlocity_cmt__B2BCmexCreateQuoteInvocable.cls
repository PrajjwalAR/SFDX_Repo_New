/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class B2BCmexCreateQuoteInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexCreateQuoteInvocable() {

    }
    @InvocableMethod(label='Create Quote' description='Creates a quote by calling the ESM_CreateQuote Integration Procedure. Pass an existing Opportunity ID or provide Opportunity fields to create a new one.')
    global static List<vlocity_cmt.B2BCmexCreateQuoteInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexCreateQuoteInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Account ID' description='The account ID for the quote.' required=true)
    global String accountId;
    @InvocableVariable(label='Opportunity Close Date' description='Close date for the new opportunity. Required when Opportunity ID is not provided.' required=false)
    global Date opportunityCloseDate;
    @InvocableVariable(label='Opportunity ID' description='The ID of an existing opportunity. If blank, a new opportunity is created.' required=false)
    global String opportunityId;
    @InvocableVariable(label='Opportunity Name' description='Name for the new opportunity. Required when Opportunity ID is not provided.' required=false)
    global String opportunityName;
    @InvocableVariable(label='Opportunity Stage' description='Stage for the new opportunity. Required when Opportunity ID is not provided.' required=false)
    global String opportunityStage;
    @InvocableVariable(label='Price List' description='The price list to be used for the quote.' required=true)
    global String priceList;
    @InvocableVariable(label='Quote Name' description='The name of the quote.' required=true)
    global String quoteName;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error Message' description='A message explaining why the quote couldn't be created.' required=false)
    global String error;
    @InvocableVariable(label='Opportunity ID' description='The ID of the linked opportunity.' required=false)
    global String opportunityId;
    @InvocableVariable(label='Quote ID' description='The ID of the created quote.' required=false)
    global String quoteId;
    global ActionOutput() {

    }
}
}
