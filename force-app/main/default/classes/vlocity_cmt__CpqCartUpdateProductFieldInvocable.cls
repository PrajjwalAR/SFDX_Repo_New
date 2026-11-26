/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CpqCartUpdateProductFieldInvocable {
    global CpqCartUpdateProductFieldInvocable() {

    }
    @InvocableMethod(label='Update Order or Quote Line Item' description='Updates fields of either quote line item or order product.')
    global static List<vlocity_cmt.CpqCartUpdateProductFieldInvocable.ActionOutput> runActions(List<vlocity_cmt.CpqCartUpdateProductFieldInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Cart ID' description='The ID of the quote or order record whose line item must be updated' required=true)
    global String cartId;
    @InvocableVariable(label='Line Item Field API Name' description='The API name of the line item field to update' required=true)
    global String fieldName;
    @InvocableVariable(label='Line Item Field Value' description='The value to update in the line item field.' required=true)
    global String fieldValue;
    @InvocableVariable(label='Line Item ID' description='The ID of the quote line item or order product  to update' required=true)
    global String itemId;
    @InvocableVariable(label='No Filtered Response' description='A Boolean value that indicates whether to retrieve a filter list of offers for the cart.' required=false)
    global String noFilteredResponse;
    @InvocableVariable(label='Bundle Line Item Id' description='The ID of the bundle quote line item or order product to update child items quantity of a parentLineItemId.' required=false)
    global String parentLineItemId;
    @InvocableVariable(label='Get Price' description='A Boolean value that indicates whether to retrieve the line item price.' required=false)
    global Boolean price;
    @InvocableVariable(label='Validate Configuration' description='A Boolean value that indicates whether to validate the configuration of the line item before adding the line item' required=false)
    global Boolean validate;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Cart ID' description='The ID of the cart record that was updated' required=false)
    global String cartId;
    @InvocableVariable(label='Error' description='An error that prevented the action from completing successfully' required=false)
    global String error;
    @InvocableVariable(label='Line Item' description='A JSON string of the updated cart line item' required=false)
    global String item;
    global ActionOutput() {

    }
}
}
