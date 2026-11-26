/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CpqCartApplyAdjustmentInvocable {
    global CpqCartApplyAdjustmentInvocable() {

    }
    @InvocableMethod(label='Adjust Line Item of Quote or Order' description='Adjusts a line item of a quote or an order')
    global static List<vlocity_cmt.CpqCartApplyAdjustmentInvocable.ActionOutput> runAction(List<vlocity_cmt.CpqCartApplyAdjustmentInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Adjustment Value Type' description='The type of adjustment value for the quote line item or order product. Valid values are Percent, Absolute' required=true)
    global String AdjustmentMethod;
    @InvocableVariable(label='Adjustment Value' description='The value by which the quote line item or order product is adjusted. A negative value indicates a discount and a positive value indicates an upcharge' required=true)
    global Integer AdjustmentValue;
    @InvocableVariable(label='Cart ID' description='The ID of the quote or order with the line item to adjust' required=true)
    global String cartId;
    @InvocableVariable(label='Adjustment Type' description='The type of adjustment for the quote line item or order product.' required=true)
    global String Field;
    @InvocableVariable(label='Line Item ID' description='The ID of the quote line item or order product to adjust' required=true)
    global String id;
    @InvocableVariable(label='offset Size' description='The offset from which to start reading products, for pagination.' required=false)
    global Integer offsetSize;
    @InvocableVariable(label='pagesize' description='The number of line items to retrieve.' required=false)
    global Integer pagesize;
    @InvocableVariable(label='Pricing Variable Code' description='The code of a specific pricing variable used to retrieve its associated price book' required=true)
    global String PricingVariableCode;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error' description='An error that was encountered during action execution.' required=false)
    global String error;
    @InvocableVariable(label='Messages' description='A JSON string that includes messages from the CPQ API response.' required=false)
    global List<String> messages;
    @InvocableVariable(label='Line Item' description='A JSON string that includes the record from the CPQ API response.' required=false)
    global List<String> records;
    global ActionOutput() {

    }
}
}
