/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CpqCartCreateCartInvocable {
    global CpqCartCreateCartInvocable() {

    }
    @InvocableMethod(label='Create Order or Quote' description='Creates either a quote or an order.')
    global static List<vlocity_cmt.CpqCartCreateCartInvocable.ActionOutput> runAction(List<vlocity_cmt.CpqCartCreateCartInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Account ID' description='The ID of the account record associated with the quote or order.' required=true)
    global String AccountId;
    @InvocableVariable(label='Name' description='The name of a quote to create' required=true)
    global String Name;
    @InvocableVariable(label='Object Type' description='The type of record to create. Valid values are Quote, Order.' required=true)
    global String objectType;
    @InvocableVariable(label='Opportunity ID' description='The ID of the opportunity record associated with the quote.' required=false)
    global String OpportunityId;
    @InvocableVariable(label='Price List Name' description='The Name of the Price List to associate with the quote or order.' required=false)
    global String priceListName;
    @InvocableVariable(label='Record Type' description='The Developer Name of the Record Type.' required=false)
    global String recordTypeName;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error Message' description='An error that was encountered during action execution.' required=false)
    global String error;
    @InvocableVariable(label='Record ID' description='The record ID of the quote or order that was created.' required=false)
    global String Id;
    @InvocableVariable(label='Cart Configuration Error Message' description='The messages returned from the CPQ API response.' required=false)
    global List<String> messages;
    @InvocableVariable(label='Name' description='The name of a quote or order that was created.' required=false)
    global String Name;
    @InvocableVariable(label='Price List' description='The price list associated with the order or quote.' required=false)
    global List<String> priceList;
    global ActionOutput() {

    }
}
}
