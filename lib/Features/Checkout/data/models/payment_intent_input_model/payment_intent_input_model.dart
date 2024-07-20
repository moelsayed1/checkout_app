class PaymentIntentInputModel {

  final int amount;
  final num currency;

  PaymentIntentInputModel({required this.amount, required this.currency});

  toJson() => {
    'amount' : amount,
    'currency' : currency,
  };
}