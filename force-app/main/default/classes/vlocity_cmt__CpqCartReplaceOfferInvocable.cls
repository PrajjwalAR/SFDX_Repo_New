/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CpqCartReplaceOfferInvocable {
    global CpqCartReplaceOfferInvocable() {

    }
    @InvocableMethod(label='Replace Offer in Cart' description='Replaces an existing offer in a cart with another offer. In the cart, the existing offer is disconnected and a new offer is added. Offers are modeled as products in Salesforce.')
    global static List<vlocity_cmt.CpqCartReplaceOfferInvocable.ActionOutput> runAction(List<vlocity_cmt.CpqCartReplaceOfferInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Cart ID' description='The ID of the quote, order record where the offer must be replaced' required=true)
    global String cartId;
    @InvocableVariable(label='Price Book Entry ID' description='The ID of the price book entry record that identifies the offer to add to the cart.' required=true)
    global String offerId;
    @InvocableVariable(label='Get Price' description='A Boolean value that indicates whether to recalculate the price based on a new offer.' required=false)
    global Boolean price;
    @InvocableVariable(label='Validate Configuration' description='A Boolean value that indicates whether to validate the configuration of the line item before replacing the line item.' required=false)
    global Boolean validate;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='error' description='An error that prevented the action from completing successfully' required=false)
    global String error;
    @InvocableVariable(label='Output' description='JSON output for replace offer action result' required=false)
    global String output;
    global ActionOutput() {

    }
}
}
