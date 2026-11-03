/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CpqCartSubmitDraftOrderInvocable {
    global CpqCartSubmitDraftOrderInvocable() {

    }
    @InvocableMethod(label='Submit Order' description='Activates a draft order and creates asset for each order product')
    global static List<vlocity_cmt.CpqCartSubmitDraftOrderInvocable.ActionOutput> runAction(List<vlocity_cmt.CpqCartSubmitDraftOrderInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Order ID' description='The ID of the order record to submit.' required=true)
    global String cartId;
    @InvocableVariable(label='Validate Configuration' description='A Boolean value that indicates whether to validate the order before submission.' required=false)
    global Boolean validate;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='error' description='An error that was encountered during action execution.' required=false)
    global String error;
    @InvocableVariable(label='successMessage' description='A message indicating that order was submitted.' required=false)
    global String successMessage;
    global ActionOutput() {

    }
}
}
