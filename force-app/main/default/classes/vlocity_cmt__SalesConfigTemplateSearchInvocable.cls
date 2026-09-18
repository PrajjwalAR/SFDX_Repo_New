/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class SalesConfigTemplateSearchInvocable {
    global SalesConfigTemplateSearchInvocable() {

    }
    @InvocableMethod(label='Search Quote or Order Templates' description='Searches Quote and Order sales config templates with filter, search, sort, and pagination')
    global static List<vlocity_cmt.SalesConfigTemplateSearchInvocable.ActionOutput> runAction(List<vlocity_cmt.SalesConfigTemplateSearchInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Filter JSON' description='JSON object with criteria array. Example: {"criteria":[{"field":"Status__c","operator":"=","values":"Approved"}]}' required=false)
    global String filterJson;
    @InvocableVariable(label='Offset' description='Number of records to skip for pagination. Default is 0' required=false)
    global Integer offset;
    @InvocableVariable(label='Page Size' description='Number of templates per page. Default is 20' required=false)
    global Integer pageSize;
    @InvocableVariable(label='Search JSON' description='JSON object with fields and value. Example: {"fields":"Name,Description__c","value":"Enterprise"}' required=false)
    global String searchJson;
    @InvocableVariable(label='Sort By JSON' description='JSON array of sort clauses. Example: [{"field":"Name","direction":"ASC"}]' required=false)
    global String sortbyJson;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error' description='Error message if the operation failed' required=false)
    global String error;
    @InvocableVariable(label='Formatted Output' description='Human-readable formatted summary of search results for display to users. Includes template names, status, category, totals, and Template IDs for follow-up detail requests.' required=false)
    global String formattedOutput;
    @InvocableVariable(label='Messages' description='Messages from the API response' required=false)
    global List<String> messages;
    @InvocableVariable(label='Offset' description='Offset used for pagination' required=false)
    global Integer offset;
    @InvocableVariable(label='Page Size' description='Page size used for pagination' required=false)
    global Integer pageSize;
    @InvocableVariable(label='Records' description='JSON strings of matching template records' required=false)
    global List<String> records;
    @InvocableVariable(label='Success' description='Whether the search completed successfully' required=false)
    global Boolean success;
    @InvocableVariable(label='Total Count' description='Total number of templates matching the search' required=false)
    global Integer totalCount;
    @InvocableVariable(label='Total Pages' description='Total number of pages' required=false)
    global Integer totalPages;
    global ActionOutput() {

    }
}
}
