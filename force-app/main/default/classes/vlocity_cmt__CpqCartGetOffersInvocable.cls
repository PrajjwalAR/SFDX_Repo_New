/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CpqCartGetOffersInvocable {
    global static String CPQ_CART_GET_PRODUCT_REQUIRED_FIELD_ERROR;
    global CpqCartGetOffersInvocable() {

    }
    @InvocableMethod(label='Get Offers for Party' description='Gets a list of offers for a party based on the partys context and search criteria. Offers are modeled as products in Salesforce')
    global static List<vlocity_cmt.CpqCartGetOffersInvocable.ActionOutput> runAction(List<vlocity_cmt.CpqCartGetOffersInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Offer Attribute List' description='A comma-delimited string of the attributes to filter offers by' required=false)
    global String attributes;
    @InvocableVariable(label='Cart ID' description='The ID of the quote, order record for which to retrieve offers' required=false)
    global String cartId;
    @InvocableVariable(label='Catalog code' description='The code of the catalog that the offers are a part of' required=false)
    global String catalogcode;
    @InvocableVariable(label='Party Context' description='The party's context that decides which offers to retrieve' required=false)
    global String context;
    @InvocableVariable(label='Fields to Retrieve' description='The list of fields to retrieve, separated by commas' required=false)
    global String fields;
    @InvocableVariable(label='Filter List' description='A comma-delimited list of filters that decides which offers to retrieve.' required=false)
    global String filters;
    @InvocableVariable(label='Include Attachment' description='A Boolean value that indicates whether to retrieve the offer attachments' required=false)
    global Boolean includeAttachment;
    @InvocableVariable(label='Include Attributes' description='A Boolean value that indicates whether to retrieve the attributes of the offers' required=false)
    global Boolean includeAttributes;
    @InvocableVariable(label='Party Logged In' description='A Boolean value that indicates whether the party is logged in. The default value is true' required=false)
    global Boolean isloggedIn;
    @InvocableVariable(label='Last Offer ID From Previous Search' description='The ID of the offer that is displayed last on the previous search' required=false)
    global String lastRecordId;
    @InvocableVariable(label='Product Hierarchy Limit' description='The number of product hierarchy levels to retrieve' required=false)
    global Integer maxProdListHierarchy;
    @InvocableVariable(label='Filter Responses' description='A Boolean value that indicates whether to retrieve a filter list of offers for the party.' required=false)
    global String noFilteredResponse;
    @InvocableVariable(label='Offer Count per Page' description='The number of offers to display on a page' required=false)
    global Integer offsetSize;
    @InvocableVariable(label='Offer Count' description='The number of offers to retrieve' required=false)
    global Integer pagesize;
    @InvocableVariable(label='Price List ID' description='The ID of a price list record to retrieve for the offer' required=false)
    global String priceListId;
    @InvocableVariable(label='Search Query' description='The text that was provided as a search input by the party' required=false)
    global String query;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Cart ID' description='The ID of the quote, order record for which offers were retrieved' required=false)
    global String cartId;
    @InvocableVariable(label='Party Context Key' description='The context key of the party that was used to decide which offers to retrieve' required=false)
    global String contextKey;
    @InvocableVariable(label='Error Message' description='An error that prevented the action from completing successfully' required=false)
    global String error;
    @InvocableVariable(label='Offer Adjusted Response' description='The messages returned from the CPQ API response.' required=false)
    global List<String> messages;
    @InvocableVariable(label='Next Offer List' description='The definition of a subsequent API call to fetch the next set of offers for the party.' required=false)
    global String nextOffersAction;
    @InvocableVariable(label='Offer List' description='A JSON string that includes the details of the offers retrieved for the party' required=false)
    global List<String> offers;
    global ActionOutput() {

    }
}
}
