@IsTest
private class OrderDiscountServiceTest {

    @IsTest
    static void testCalculateDiscount() {
        System.assertEquals(
            1800,
            OrderDiscountService.calculateDiscount(12000, 'VIP')
        );

        System.assertEquals(
            1000,
            OrderDiscountService.calculateDiscount(10000, 'Standard')
        );

        System.assertEquals(
            0,
            OrderDiscountService.calculateDiscount(5000, 'Standard')
        );

        System.assertEquals(
            0,
            OrderDiscountService.calculateDiscount(null, 'VIP')
        );
    }
}