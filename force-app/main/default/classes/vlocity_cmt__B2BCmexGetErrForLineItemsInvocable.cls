/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class B2BCmexGetErrForLineItemsInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexGetErrForLineItemsInvocable() {

    }
    @InvocableMethod(label='Get Errors For Line Items' description='Returns error messages for each given line item ID (root or child).')
    global static List<vlocity_cmt.B2BCmexGetErrForLineItemsInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexGetErrForLineItemsInvocable.ActionInput> inputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Cart ID' description='The ID of the Quote or Order to fetch errors for.' required=true)
    global String cartId;
    @InvocableVariable(label='Cart Type' description='The type of cart: Quote or Order.' required=true)
    global String cartType;
    @InvocableVariable(label='Line Item IDs' description='A list of line item IDs (root or child) to fetch errors for.' required=true)
    global List<String> lineItemIds;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error Message' description='A message explaining why the process failed.' required=false)
    global String error;
    @InvocableVariable(label='Line Item Errors' description='A list of error details for each line item, containing the item ID and its error messages.' required=false)
    global List<vlocity_cmt.B2BCmexGetErrForLineItemsInvocable.ItemErrorDetail> lineItemErrors;
}
global class ItemErrorDetail {
    @InvocableVariable(label='Error Messages' description='A list of error messages for the line item.' required=false)
    global List<String> errorMessages;
    @InvocableVariable(label='Item ID' description='The ID of the line item.' required=false)
    global String itemId;
    global ItemErrorDetail() {

    }
    global ItemErrorDetail(String itemId, List<String> errorMessages) {

    }
}
}
