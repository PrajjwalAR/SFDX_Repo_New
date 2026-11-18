public with sharing class Demo_BillingService {

    // SAF-101: public, no in-repo production caller, but a test class calls it.
    public static String getEndpointUrl() {
        return 'callout:Demo_Billing_API/v1/invoices';
    }

    // SAF-105: public today, every caller is inside this class.
    public static HttpRequest buildDemoRequest(String path) {
        HttpRequest req = new HttpRequest();
        req.setEndpoint('callout:Demo_Billing_API' + path);
        req.setMethod('GET');
        return req;
    }

    // SAF-103: reachable from Flow only. No Apex caller anywhere.
    @InvocableMethod(label='Send Demo Invoice')
    public static List<String> sendDemoInvoice(List<String> invoiceIds) {
        return invoiceIds;
    }

    // SAF-107 / SAF-108: signature under migration.
    public static String postDemoInvoice(String payload) {
        return payload;
    }

    public static String describe() {
        return buildDemoRequest('/v1/invoices').getEndpoint();
    }
}