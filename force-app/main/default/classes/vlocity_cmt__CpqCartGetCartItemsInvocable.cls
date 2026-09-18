/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CpqCartGetCartItemsInvocable {
    global CpqCartGetCartItemsInvocable() {

    }
    @InvocableMethod(label='Get Line Items of Order or Quote' description='Gets cart item information, such as active line item, total price, discount, and product configurations for a specified order product or quote line item.')
    global static List<vlocity_cmt.CpqCartGetCartItemsInvocable.ActionOutput> runAction(List<vlocity_cmt.CpqCartGetCartItemsInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Cart ID' description='The ID of the quote or order record whose line item must be retrieved.' required=true)
    global String cartId;
    @InvocableVariable(label='No Filtered Response' description='A Boolean value that indicates whether to provide the response without filtering. The default value is false.' required=false)
    global String noFilteredResponse;
    @InvocableVariable(label='offset Size' description='The offset from which to start reading products, for pagination.' required=false)
    global Integer offsetSize;
    @InvocableVariable(label='Item Count' description='The number of line items to retrieve.' required=false)
    global Integer pagesize;
    @InvocableVariable(label='Get Price' description='A Boolean value that indicates whether to retrieve the line item price. The default value is true.' required=false)
    global Boolean price;
    @InvocableVariable(label='Validate Configuration' description='A Boolean value that indicates whether to validate the configuration of the line item before adding the line item. The default value is true.' required=false)
    global Boolean validate;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='cartMessage' description='A message related to the cart, such as status.' required=false)
    global String cartMessage;
    @InvocableVariable(label='error' description='An error that was encountered during action execution.' required=false)
    global String error;
    @InvocableVariable(label='lineItem' description='A JSON string of the retrieved quote line items or order products in the cart.' required=false)
    global List<String> items;
    global ActionOutput() {

    }
}
}
