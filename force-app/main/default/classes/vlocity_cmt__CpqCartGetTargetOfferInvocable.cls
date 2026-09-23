/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CpqCartGetTargetOfferInvocable {
    global CpqCartGetTargetOfferInvocable() {

    }
    @InvocableMethod(label='Get Offers for Asset' description='Gets a list of offers for a asset. Offers are modeled as products in Salesforce')
    global static List<vlocity_cmt.CpqCartGetTargetOfferInvocable.ActionOutput> runAction(List<vlocity_cmt.CpqCartGetTargetOfferInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Account ID' description='The ID of the account record associated with the quote or order' required=false)
    global String accountId;
    @InvocableVariable(label='Asset ID' description='The list of asset IDs used for asset-to-order or asset-to-quote operation, separated by commas.' required=false)
    global String assetIds;
    @InvocableVariable(label='Cart ID' description='The ID of the quote, order record to retrieve offers for' required=false)
    global String cartId;
    @InvocableVariable(label='Fields to Retrieve' description='The list of fields to retrieve, separated by commas.' required=false)
    global String fields;
    @InvocableVariable(label='Is Disconnect Flow' description='Boolean value to indicate if the flow is being executed from the Disconnect flow' required=false)
    global String isDisconnectFlow;
    @InvocableVariable(label='No Filtered Response' description='A Boolean value that indicates whether to provide the response without filtering.' required=false)
    global String noFilteredResponse;
    @InvocableVariable(label='Record Type' description='The type of record to retrieve offers for. Valid values are Quote, Order' required=false)
    global String objectType;
    @InvocableVariable(label='Opportunity ID' description='The ID of the opportunity associated with the quote' required=false)
    global String OpportunityId;
    @InvocableVariable(label='Request Date Time' description='The date and time when the request was placed to retrieve offers for the order in GMT format.' required=false)
    global String requestDateTime;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Cart ID' description='The ID of the quote, order record for which offers were retrieved' required=false)
    global String cartId;
    @InvocableVariable(label='error' description='An error that was encountered during action execution.' required=false)
    global String error;
    @InvocableVariable(label='Offer List' description='A JSON string that includes the details of the offers retrieved for the cart.' required=false)
    global List<String> offers;
    global ActionOutput() {

    }
}
}
