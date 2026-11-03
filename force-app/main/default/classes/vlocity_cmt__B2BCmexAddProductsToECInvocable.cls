/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class B2BCmexAddProductsToECInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexAddProductsToECInvocable() {

    }
    @InvocableMethod(label='Add Products to Enterprise Cart' description='Adds multiple products to a Quote or Order via the addProductsInBatch API, with support for attributes, members, and groups.')
    global static List<vlocity_cmt.B2BCmexAddProductsToECInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexAddProductsToECInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Batch Size' description='The batch size for processing. Typically leave blank to use the default.' required=false)
    global Integer batchSize;
    @InvocableVariable(label='Cart ID' description='The ID of the Quote or Order to add products to.' required=true)
    global String cartId;
    @InvocableVariable(label='Cart Type' description='The type of cart: Quote or Order.' required=true)
    global String cartType;
    @InvocableVariable(label='Products JSON' description='A JSON array of product objects. Each product must have pricebookEntryId. Optional fields: productCode, memberIds (array), groupIds (array), attributes (array of objects with productCode, attributeCode, value).' required=true)
    global String products;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Batch Job ID' description='The Salesforce batch job ID for tracking the asynchronous operation.' required=false)
    global String batchJobId;
    @InvocableVariable(label='Error Message' description='An error message if the operation failed to queue.' required=false)
    global String error;
    @InvocableVariable(label='Message' description='A message describing the operation status.' required=false)
    global String message;
    @InvocableVariable(label='Is Success' description='A Boolean value that indicates whether the batch was queued successfully.' required=false)
    global Boolean success;
}
}
