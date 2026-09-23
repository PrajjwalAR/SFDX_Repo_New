/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CpqCartDeleteItemInvocable {
    global CpqCartDeleteItemInvocable() {

    }
    @InvocableMethod(label='Delete Line Items from Cart' description='Deletes or disconnects either a line item from a quote or an order, or a product from a line item.')
    global static List<vlocity_cmt.CpqCartDeleteItemInvocable.ActionOutput> runAction(List<vlocity_cmt.CpqCartDeleteItemInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Cart Id' description='The ID of the quote or order record from which a line item must be deleted or disconnected.' required=false)
    global String cartId;
    @InvocableVariable(label='Line Item ID' description='The ID of the line item record to delete or disconnect from a line item.' required=false)
    global String itemId;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error Message' description='An error due to which the line item or product was not deleted or disconnected.' required=false)
    global String error;
    @InvocableVariable(label='Success Message' description='A message indicating whether the line item or product is deleted or disconnected.' required=false)
    global String successMessage;
    global ActionOutput() {

    }
}
}
