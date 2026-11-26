/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class SalesConfigTemplateApplyInvocable {
    global SalesConfigTemplateApplyInvocable() {

    }
    @InvocableMethod(label='Apply Quote or Order Template' description='Applies a template to create a new Quote/Order or add items to an existing cart')
    global static List<vlocity_cmt.SalesConfigTemplateApplyInvocable.ActionOutput> runAction(List<vlocity_cmt.SalesConfigTemplateApplyInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Account ID' description='Optional Account ID for the cart' required=false)
    global String accountId;
    @InvocableVariable(label='Async Mode' description='Run in async mode (default: false)' required=false)
    global Boolean asyncMode;
    @InvocableVariable(label='Cart ID' description='The ID of the Quote or Order to apply template items to' required=true)
    global String cartId;
    @InvocableVariable(label='Cloning Options JSON' description='JSON array of cloning options' required=false)
    global String cloningOptionsJson;
    @InvocableVariable(label='Custom SObjects To Clone' description='Comma-separated list of custom SObjects to clone' required=false)
    global String customSObjectsToClone;
    @InvocableVariable(label='Default Objects To Clone JSON' description='JSON array of objects to clone. Example: [{"sObjectName":"QuoteLineItem"}]' required=false)
    global String defaultObjectsToCloneJson;
    @InvocableVariable(label='Custom Name' description='Optional custom name for the new/updated cart' required=false)
    global String name;
    @InvocableVariable(label='Object Details In Sorted Order JSON' description='JSON array of object details for cloning order' required=false)
    global String objectDetailsInSortedOrderJson;
    @InvocableVariable(label='Opportunity ID' description='Optional Opportunity ID to link to the cart' required=false)
    global String opportunityId;
    @InvocableVariable(label='Run Pricing' description='Execute pricing after apply (default: false)' required=false)
    global Boolean pricing;
    @InvocableVariable(label='Record Type' description='Optional RecordType DeveloperName for the cart' required=false)
    global String recordType;
    @InvocableVariable(label='Template ID' description='The ID of the template to apply' required=true)
    global String templateId;
    @InvocableVariable(label='Run Validation' description='Execute validation after apply (default: false)' required=false)
    global Boolean validation;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Cart ID' description='The ID of the new or updated Quote/Order' required=false)
    global String cartId;
    @InvocableVariable(label='Error' description='Error message if the operation failed' required=false)
    global String error;
    @InvocableVariable(label='Formatted Output' description='Human-readable confirmation or error message for display to users. Shows apply status, cart ID, and next steps.' required=false)
    global String formattedOutput;
    @InvocableVariable(label='Job ID' description='Async job ID if running in async mode' required=false)
    global String jobId;
    @InvocableVariable(label='Messages' description='Messages from the API response' required=false)
    global List<String> messages;
    @InvocableVariable(label='Success' description='Whether the template was applied successfully' required=false)
    global Boolean success;
    global ActionOutput() {

    }
}
}
