/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CpqCartGetAssetsInvocable {
    global CpqCartGetAssetsInvocable() {

    }
    @InvocableMethod(label='Get Assets of an Account' description='Get a list of assets that are associated with an account.')
    global static List<vlocity_cmt.CpqCartGetAssetsInvocable.ActionOutput> runAction(List<vlocity_cmt.CpqCartGetAssetsInvocable.ActionInput> actionInputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Account ID' description='The ID of the account record associated with an asset.' required=false)
    global String accountId;
    @InvocableVariable(label='Page Number' description='The page number that consists the assets to display.' required=false)
    global Integer currentPage;
    @InvocableVariable(label='Fields to Retrieve List' description='The comma-delimited list of fields to retrieve for an asset.' required=false)
    global String fields;
    @InvocableVariable(label='Filter List' description='A comma-delimited list of filters that decides which assets to retrieve.' required=false)
    global String filters;
    @InvocableVariable(label='Filter Responses' description='A Boolean value that indicates whether to provide the response without filtering. The default value is false.' required=false)
    global String noFilteredResponse;
    @InvocableVariable(label='Start Offset' description='The offset from which you want to start reading products for pagination.' required=false)
    global Integer offsetSize;
    @InvocableVariable(label='Asset Count' description='The number of assets to retrieve.' required=false)
    global Integer pagesize;
    @InvocableVariable(label='Search Query' description='The text that was provided as a search input to filter assets.' required=false)
    global String query;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Error Message' description='An error due to which the assets weren’t retrieved.' required=false)
    global String error;
    @InvocableVariable(label='Messages' description='A JSON string that includes the messages containing the details of the output.' required=false)
    global List<String> messages;
    @InvocableVariable(label='Asset Details' description='A JSON string that includes the details of the assets that were retrieved.' required=false)
    global List<String> records;
    @InvocableVariable(label='Total Size' description='Total number of assets' required=false)
    global Integer totalSize;
    global ActionOutput() {

    }
}
}
