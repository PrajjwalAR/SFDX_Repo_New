/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class SalesConfigTemplateGetInvocable {
    global SalesConfigTemplateGetInvocable() {

    }
    @InvocableMethod(label='Get Quote or Order Template' description='Retrieves a Quote or Order sales config template by TemplateId')
    global static List<vlocity_cmt.SalesConfigTemplateGetInvocable.ActionOutput> runAction(List<vlocity_cmt.SalesConfigTemplateGetInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Template ID' description='The ID of the Quote or Order template to retrieve' required=true)
    global String templateId;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error' description='Error message if the operation failed' required=false)
    global String error;
    @InvocableVariable(label='Formatted Output' description='Human-readable formatted template details for display to users. Includes name, status, category, pricing, tags, and cart type.' required=false)
    global String formattedOutput;
    @InvocableVariable(label='Messages' description='Messages from the API response' required=false)
    global List<String> messages;
    @InvocableVariable(label='Success' description='Whether the template was retrieved successfully' required=false)
    global Boolean success;
    @InvocableVariable(label='Template' description='JSON string of the template data including metadata, tags, and cart totals' required=false)
    global String template;
    global ActionOutput() {

    }
}
}
