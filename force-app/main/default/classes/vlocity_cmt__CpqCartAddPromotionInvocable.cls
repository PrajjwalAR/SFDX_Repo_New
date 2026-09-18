/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CpqCartAddPromotionInvocable {
    global CpqCartAddPromotionInvocable() {

    }
    @InvocableMethod(label='Apply Promotion to Cart' description='Applies a promotion to a cart.')
    global static List<vlocity_cmt.CpqCartAddPromotionInvocable.ActionOutput> runAction(List<vlocity_cmt.CpqCartAddPromotionInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Cart ID' description='The ID of the quote or order record to apply the promotion to.' required=true)
    global String cartId;
    @InvocableVariable(label='Update Price' description='A Boolean value that indicates whether to update the price of the cart after applying the promotion.' required=false)
    global Boolean price;
    @InvocableVariable(label='Promotion ID' description='The ID of the promotion to apply to a quote or an order.' required=true)
    global String promotionId;
    @InvocableVariable(label='Validate Configuration' description='A Boolean value that indicates whether to validate the configuration of the cart after applying the promotion.' required=false)
    global Boolean validate;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error Message' description='An error due to which the promotions weren't applied.' required=false)
    global String error;
    @InvocableVariable(label='Success Message' description='A message indicating whether the promotions were applied.' required=false)
    global String message;
    global ActionOutput() {

    }
}
}
