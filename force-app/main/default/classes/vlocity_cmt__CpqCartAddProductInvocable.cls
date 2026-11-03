/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CpqCartAddProductInvocable {
    global CpqCartAddProductInvocable() {

    }
    @InvocableMethod(label='Add Product To Cart' description='Adds a product as either a quote line item to a quote or an order product to an order.')
    global static List<vlocity_cmt.CpqCartAddProductInvocable.ActionOutput> runAction(List<vlocity_cmt.CpqCartAddProductInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Cart Id' description='The ID of the quote or order record to associate line items with.' required=true)
    global String cartId;
    @InvocableVariable(label='Product ID' description='The ID of the price book entry to add to a quote or product.' required=true)
    global String itemId;
    @InvocableVariable(label='No Response Needed' description='A Boolean value that indicates whether a response is required. The default value is false.' required=false)
    global Boolean noResponseNeeded;
    @InvocableVariable(label='Update Price' description='A Boolean value that indicates whether to update the price of the line item before adding the item. The default value is true.' required=false)
    global Boolean price;
    @InvocableVariable(label='Quantity' description='The quantity of items to add. The default value is 1.' required=false)
    global Integer quantity;
    @InvocableVariable(label='Validate Configuration' description='A Boolean value that indicates whether to validate the configuration of the line item before adding the line item. The default value is true.' required=false)
    global Boolean validate;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Cart Error Message' description='Cart error message if there is any error in cart after adding the product' required=false)
    global String cartErrorMessage;
    @InvocableVariable(label='Error Message' description='The error due to which the product wasn't added to the quote or order.' required=false)
    global String error;
    @InvocableVariable(label='Product Added' description='A message indicating whether the product was added to the cart.' required=false)
    global String result;
    global ActionOutput() {

    }
}
}
