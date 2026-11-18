@isTest
private class Demo_BillingServiceTest {
    @isTest
    static void endpointResolvesThroughNamedCredential() {
        // SAF-101: this is the only caller of getEndpointUrl().
        System.assertEquals(
            'callout:Demo_Billing_API/v1/invoices',
            Demo_BillingService.getEndpointUrl(),
            'endpoint should resolve through the named credential'
        );
    }

    @isTest
    static void requestUsesNamedCredential() {
        System.assert(
            Demo_BillingService.describe().startsWith('callout:Demo_Billing_API'),
            'request should be built against the named credential'
        );
    }
}