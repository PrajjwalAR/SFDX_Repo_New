/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CpqCartGetPromotionInvocable {
    global CpqCartGetPromotionInvocable() {

    }
    @InvocableMethod(label='Get Promotions of a Cart' description='Gets a list of promotions that are eligible for a cart.')
    global static List<vlocity_cmt.CpqCartGetPromotionInvocable.ActionOutput> runAction(List<vlocity_cmt.CpqCartGetPromotionInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Cart ID' description='The ID of the quote or order record to retrieve promotions for.' required=true)
    global String cartId;
    @InvocableVariable(label='Fields to Retrieve List' description='The comma-delimited list of fields to retrieve for a promotion.' required=false)
    global String fieldList;
    @InvocableVariable(label='Include Ineligible Promotions' description='A Boolean value that indicates whether to include ineligible promotions.' required=false)
    global Boolean includeIneligible;
    @InvocableVariable(label='Last Promotion ID from Previous Search' description='The ID of the promotion that is displayed last in the previous response.' required=false)
    global String lastRecordId;
    @InvocableVariable(label='Filter Responses' description='A Boolean value that indicates whether to retrieve a filtered list of promotions.' required=false)
    global String noFilteredResponse;
    @InvocableVariable(label='Start Offset' description='The offset from which you want to start reading promotions for pagination.' required=false)
    global Integer offsetSize;
    @InvocableVariable(label='Page Size' description='The number of promotions to retrieve for a page.' required=false)
    global Integer pagesize;
    @InvocableVariable(label='Include Price' description='A Boolean value that indicates whether to include the cart price.' required=false)
    global Boolean price;
    @InvocableVariable(label='Search Query' description='The text that is provided as a search phrase to filter promotions with.' required=false)
    global String queryTerms;
    @InvocableVariable(label='Search Field Name' description='The API name of the Promotion field to search promotion records with.' required=false)
    global String searchBy;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error Message' description='An error due to which the promotions weren't retrieved.' required=false)
    global String error;
    @InvocableVariable(label='Messages' description='A JSON string that includes the messages containing the details of the output.' required=false)
    global List<String> messages;
    @InvocableVariable(label='Promotion Details' description='A JSON string that includes the details of the promotions that were retrieved.' required=false)
    global List<String> records;
    @InvocableVariable(label='Promotions Count' description='The number of promotions that were retrieved for a quote or an order.' required=false)
    global Integer totalSize;
    global ActionOutput() {

    }
}
}
