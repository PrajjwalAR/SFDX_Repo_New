/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class SalesConfigTemplateDeleteInvocable {
    global SalesConfigTemplateDeleteInvocable() {

    }
    @InvocableMethod(label='Delete Sales Config Template' description='Deletes a sales config template with optional deletion of its underlying Quote/Order')
    global static List<vlocity_cmt.SalesConfigTemplateDeleteInvocable.ActionOutput> runAction(List<vlocity_cmt.SalesConfigTemplateDeleteInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Delete Template Quote/Order (Deprecated)' description='Deprecated: Use deleteTemplateRecord instead' required=false)
    global Boolean deleteTemplateQuote;
    @InvocableVariable(label='Delete Template Record' description='Set to true ONLY if the user explicitly asks to delete the underlying Quote or Order along with the template. Default: false. Never assume this should be true — only set when the user specifically requests deletion of the underlying record.' required=false)
    global Boolean deleteTemplateRecord;
    @InvocableVariable(label='Force Delete' description='Set to true ONLY if the user explicitly asks to force-delete an Approved template. Default: false. Never set this to true on your own — approved templates are protected and require explicit user confirmation to delete.' required=false)
    global Boolean forceDelete;
    @InvocableVariable(label='Template ID' description='The ID of the SalesConfigTemplate__c to delete' required=true)
    global String templateId;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Deleted Quote/Order ID (Deprecated)' description='Deprecated: Use deletedTemplateRecordId instead' required=false)
    global String deletedQuoteId;
    @InvocableVariable(label='Deleted Template ID' description='The ID of the deleted template' required=false)
    global String deletedTemplateId;
    @InvocableVariable(label='Deleted Template Record ID' description='The ID of the deleted Quote or Order (if deleteTemplateRecord was true)' required=false)
    global String deletedTemplateRecordId;
    @InvocableVariable(label='Error Message' description='Error message if the operation failed' required=false)
    global String error;
    @InvocableVariable(label='Formatted Output' description='Human-readable confirmation or error message for display to users. Shows deletion status and deleted record IDs.' required=false)
    global String formattedOutput;
    @InvocableVariable(label='Messages' description='Additional messages from the delete operation' required=false)
    global List<String> messages;
    @InvocableVariable(label='Success' description='Indicates whether the delete operation succeeded' required=false)
    global Boolean success;
    global ActionOutput() {

    }
}
}
