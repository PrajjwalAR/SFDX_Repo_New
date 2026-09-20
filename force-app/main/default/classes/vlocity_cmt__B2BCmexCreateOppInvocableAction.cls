/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class B2BCmexCreateOppInvocableAction extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexCreateOppInvocableAction() {

    }
    @InvocableMethod(label='Create Opportunity' description='Creates an opportunity by calling the ESMCreateOpportunity DataRaptor bundle.')
    global static List<vlocity_cmt.B2BCmexCreateOppInvocableAction.ActionOutput> runAction(List<vlocity_cmt.B2BCmexCreateOppInvocableAction.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Account ID' description='The account ID for the opportunity.' required=true)
    global String accountId;
    @InvocableVariable(label='Opportunity Close Date' description='The close date for the opportunity.' required=true)
    global Date opportunityCloseDate;
    @InvocableVariable(label='Opportunity Name' description='The name of the opportunity.' required=true)
    global String opportunityName;
    @InvocableVariable(label='Opportunity Stage' description='The stage of the opportunity.' required=true)
    global String opportunityStage;
    @InvocableVariable(label='Price List' description='The price list to be used for the opportunity.' required=true)
    global String priceList;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error Message' description='A message explaining why the opportunity couldn't be created.' required=false)
    global String error;
    @InvocableVariable(label='Opportunity ID' description='The ID of the created opportunity.' required=false)
    global String opportunityId;
    global ActionOutput() {

    }
}
}
