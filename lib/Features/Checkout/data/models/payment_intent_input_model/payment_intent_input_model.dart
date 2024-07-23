class PaymentIntentInputModel {

  final int amount;
  final String currency;
  final String customerId;

  PaymentIntentInputModel({required this.amount, required this.currency, required this.customerId});

  toJson() => {
    'amount' : amount * 100,
    'currency' : currency,
    'customer' : customerId,
  };
}