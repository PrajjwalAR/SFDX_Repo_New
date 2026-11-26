/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class SalesConfigTemplateSaveInvocable {
    global SalesConfigTemplateSaveInvocable() {

    }
    @InvocableMethod(label='Save Quote or Order as Template' description='Saves a Quote or Order configuration as a reusable sales config template')
    global static List<vlocity_cmt.SalesConfigTemplateSaveInvocable.ActionOutput> runAction(List<vlocity_cmt.SalesConfigTemplateSaveInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Async Mode' description='Run in async mode (default: false)' required=false)
    global Boolean asyncMode;
    @InvocableVariable(label='Cart ID' description='The ID of the Quote or Order to save as template' required=true)
    global String cartId;
    @InvocableVariable(label='Category' description='Category for the template (e.g., Standard, Premium)' required=false)
    global String category;
    @InvocableVariable(label='Cloning Options JSON' description='JSON array of cloning options' required=false)
    global String cloningOptionsJson;
    @InvocableVariable(label='Default Objects To Clone JSON' description='JSON array of objects to clone. Example: [{"sObjectName":"QuoteLineItem"}]' required=false)
    global String defaultObjectsToCloneJson;
    @InvocableVariable(label='Description' description='Description of the template' required=false)
    global String description;
    @InvocableVariable(label='Object Details In Sorted Order JSON' description='JSON array of object details for cloning order' required=false)
    global String objectDetailsInSortedOrderJson;
    @InvocableVariable(label='Run Pricing' description='Execute pricing after save (default: false)' required=false)
    global Boolean pricing;
    @InvocableVariable(label='Template Name' description='Name for the template' required=true)
    global String templateName;
    @InvocableVariable(label='Run Validation' description='Execute validation after save (default: false)' required=false)
    global Boolean validation;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error' description='Error message if the operation failed' required=false)
    global String error;
    @InvocableVariable(label='Formatted Output' description='Human-readable confirmation or error message for display to users. Shows template name, ID, category, and save status.' required=false)
    global String formattedOutput;
    @InvocableVariable(label='Job ID' description='Async job ID if running in async mode' required=false)
    global String jobId;
    @InvocableVariable(label='Messages' description='Messages from the API response' required=false)
    global List<String> messages;
    @InvocableVariable(label='Success' description='Whether the template was saved successfully' required=false)
    global Boolean success;
    @InvocableVariable(label='Template ID' description='The ID of the created template' required=false)
    global String templateId;
    global ActionOutput() {

    }
}
}
