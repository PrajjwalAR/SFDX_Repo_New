/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CpqCartUpdateProductAttributesInvocable {
    global CpqCartUpdateProductAttributesInvocable() {

    }
    @InvocableMethod(label='Update Order or Quote Line Item Attribute' description='Updates an attribute of either quote line item or order product.')
    global static List<vlocity_cmt.CpqCartUpdateProductAttributesInvocable.ActionOutput> runActions(List<vlocity_cmt.CpqCartUpdateProductAttributesInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Line Item Attribute Code' description='The code of Attribute of the product for which to update attributes.' required=true)
    global String attributeCode;
    @InvocableVariable(label='Line Item Attribute Value' description='The value to update for the order product attribute or quote line item attribute.' required=true)
    global String attributeValue;
    @InvocableVariable(label='Cart Id' description='The ID of the quote or order record whose line item must be updated.' required=true)
    global String cartId;
    @InvocableVariable(label='Fields' description='List of fields to return in the response, separated by commas.' required=false)
    global List<String> fields;
    @InvocableVariable(label='Line Item Id' description='The ID of the quote line item or order product to update' required=true)
    global String itemId;
    @InvocableVariable(label='No Filtered Response' description='Provide response as it is without filtering' required=false)
    global String noFilteredResponse;
    @InvocableVariable(label='Bundle Line Item Id' description='The ID of the Bundle quote line item or order product to update' required=false)
    global String parentLineItemId;
    @InvocableVariable(label='Update Price' description='A Boolean value that indicates whether to update the price of the line item based on the updated attribute value.' required=false)
    global Boolean price;
    @InvocableVariable(label='Validate Configuration' description=' A Boolean value that indicates whether to validate the configuration of the line item before updating the line item' required=false)
    global Boolean validate;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Cart Id' description='The CartId. This is a string identifying the Cart' required=false)
    global String cartId;
    @InvocableVariable(label='Error' description='An error that prevented the action from completing successfully' required=false)
    global String error;
    @InvocableVariable(label='Line Item' description=' A JSON string of the updated quote line item or order product' required=false)
    global String item;
    global ActionOutput() {

    }
}
}
