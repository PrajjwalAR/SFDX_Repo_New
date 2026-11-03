/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class B2BCmexHasCartErrorsInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexHasCartErrorsInvocable() {

    }
    @InvocableMethod(label='Has Cart Errors' description='Returns whether any line item in the cart has errors.')
    global static List<vlocity_cmt.B2BCmexHasCartErrorsInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexHasCartErrorsInvocable.ActionInput> inputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Cart ID' description='The ID of the Quote or Order to check for errors.' required=true)
    global String cartId;
    @InvocableVariable(label='Cart Type' description='The type of cart: Quote or Order.' required=true)
    global String cartType;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error Message' description='A message explaining why the process failed.' required=false)
    global String error;
    @InvocableVariable(label='Has Errors' description='Indicates whether any line item in the cart has errors.' required=false)
    global Boolean hasErrors;
}
}
