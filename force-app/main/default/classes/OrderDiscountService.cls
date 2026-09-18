public with sharing class OrderDiscountService {

    public static Decimal calculateDiscount(
        Decimal orderAmount,
        String customerType
    ) {
        if (orderAmount == null || orderAmount <= 0) {
            return 0;
        }

        if (customerType == 'VIP') {
            return orderAmount * 0.15;
        }

        if (orderAmount >= 10000) {
            return orderAmount * 0.10;
        }

        return 0;
    }
}