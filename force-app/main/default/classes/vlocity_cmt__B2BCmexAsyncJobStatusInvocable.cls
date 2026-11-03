/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class B2BCmexAsyncJobStatusInvocable extends vlocity_cmt.B2BCmexBaseInvocable {
    global B2BCmexAsyncJobStatusInvocable() {

    }
    @InvocableMethod(label='Check Async Job Status' description='Checks if any asynchronous jobs are running for the specific quote.')
    global static List<vlocity_cmt.B2BCmexAsyncJobStatusInvocable.ActionOutput> runAction(List<vlocity_cmt.B2BCmexAsyncJobStatusInvocable.ActionInput> inputs) {
        return null;
    }
global class ActionInput {
    @InvocableVariable(label='Quote ID' description='The ID of the quote used to check the status of asynchronous jobs.' required=true)
    global String quoteId;
    global ActionInput() {

    }
}
global class ActionOutput {
    @InvocableVariable(label='Apex Batch Job IDs' description='A list of job IDs retrieved from the Apex batch job status check.' required=false)
    global List<String> apexBatchJobIds;
    @InvocableVariable(label='Async Job Found' description='Indicates whether any asynchronous job is running for the quote.' required=false)
    global Boolean asyncJobFound;
    @InvocableVariable(label='Error Message' description='A message explaining why the process failed.' required=false)
    global String error;
    @InvocableVariable(label='ESM Async Job Details' description='The job name and the asynchronous job ID retrieved from the ESM_GetAsyncJobStatus integration procedure.' required=false)
    global List<vlocity_cmt.B2BCmexAsyncJobStatusInvocable.ESMAsyncJobDetail> esmAsyncJobIds;
    @InvocableVariable(label='Quote Clone Job IDs' description='A list of job IDs retrieved from the ESM_GetQuoteCloneStatus integration procedure.' required=false)
    global List<String> quoteCloneJobIds;
    @InvocableVariable(label='Status' description='The status of the operation, for example, success or failed.' required=false)
    global String status;
}
global class ESMAsyncJobDetail {
    @InvocableVariable(label='Async Job ID' description='Async process ID' required=false)
    global String asyncJobId;
    @InvocableVariable(label='Job Name' description='Feature name of the async job' required=false)
    global String jobName;
    global ESMAsyncJobDetail() {

    }
    global ESMAsyncJobDetail(String jobName, String asyncJobId) {

    }
}
}
