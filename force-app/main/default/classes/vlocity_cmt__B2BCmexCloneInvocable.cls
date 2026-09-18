/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class B2BCmexCloneInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexCloneInvocable() {

    }
    @InvocableMethod(label='Clone Record' description='Clones a record and its related objects based on configuration')
    global static List<vlocity_cmt.B2BCmexCloneInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexCloneInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Execution Mode' description='The mode of execution, either sync (synchronous) or async (asynchronous). The default is async.' required=false)
    global String executionMode;
    @InvocableVariable(label='Object Details in Sorted Order' description='A JSON string containing the configuration of objects to clone in sorted order. The first entry must include objectName (e.g. Quote, Order).' required=true)
    global String objectDetailsInSortedOrderJson;
    @InvocableVariable(label='Record ID' description='The ID of the record to clone' required=true)
    global String recordId;
    @InvocableVariable(label='Run Pricing' description='A Boolean value that indicates whether to run pricing after cloning' required=false)
    global Boolean runPricing;
    @InvocableVariable(label='Run Validation' description='A Boolean value that indicates whether to run validation after cloning.' required=false)
    global Boolean runValidation;
    @InvocableVariable(label='Object API Name' description='Optional. Object type is derived from the first entry in Object Details in Sorted Order when not provided.' required=false)
    global String sObjectName;
    @InvocableVariable(label='Target Field Updates' description='A JSON string containing field API names and values to update on the cloned record. For example: {"Name":"New Name","Status":"Draft"}.' required=false)
    global String targetFieldUpdatesJson;
    @InvocableVariable(label='Target Record ID' description='The ID of the existing record to use. If provided, the action uses this record instead of creating a new one.' required=false)
    global String targetRecordId;
    @InvocableVariable(label='Target Record Type API Name' description='The API name of the record type to set on the cloned record.' required=false)
    global String targetRecordTypeDevName;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Async Job ID' description='The batch job ID if the execution mode is asynchronous.' required=false)
    global String asyncJobId;
    @InvocableVariable(label='Cloned Record ID' description='The ID of the cloned record.' required=false)
    global String clonedRecordId;
    @InvocableVariable(label='Cloned Record Name' description='The name of the cloned record.' required=false)
    global String clonedRecordName;
    @InvocableVariable(label='Cloned Record Status' description='The status of the cloned record.' required=false)
    global String clonedRecordStatus;
    @InvocableVariable(label='Error Message' description='An error message if the operation failed.' required=false)
    global String error;
    @InvocableVariable(label='Output Message' description='A message containing the details of the output.' required=false)
    global String message;
    @InvocableVariable(label='Is Success' description='A Boolean value that indicates whether the clone operation was successful.' required=false)
    global Boolean success;
    global ActionOutput() {

    }
}
}
