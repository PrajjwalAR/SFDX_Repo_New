/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class B2BCmexGetRootItemsWithErrInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexGetRootItemsWithErrInvocable() {

    }
    @InvocableMethod(label='Get Root Items With Errors' description='Returns root line items that have errors on themselves or their children.')
    global static List<vlocity_cmt.B2BCmexGetRootItemsWithErrInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexGetRootItemsWithErrInvocable.ActionInput> inputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Cart ID' description='The ID of the Quote or Order to fetch root items with errors.' required=true)
    global String cartId;
    @InvocableVariable(label='Cart Type' description='The type of cart: Quote or Order.' required=true)
    global String cartType;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error Message' description='A message explaining why the process failed.' required=false)
    global String error;
    @InvocableVariable(label='Root Item Error Details' description='A list of error details for each root item, containing the item ID and its error messages.' required=false)
    global List<vlocity_cmt.B2BCmexGetRootItemsWithErrInvocable.ItemErrorDetail> rootItemErrorDetails;
    @InvocableVariable(label='Root Item IDs' description='A list of root line item IDs that have errors.' required=false)
    global List<String> rootItemIds;
    @InvocableVariable(label='Total Error Count' description='The total number of root items with errors.' required=false)
    global Integer totalErrorCount;
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
