import 'package:checkout_app/Features/Checkout/data/models/payment_intent_model/card.dart';
import 'package:checkout_app/Features/Checkout/data/models/payment_intent_model/link.dart';

class PaymentMethodOptions {
  final Card? card;
  final Link? link;

  PaymentMethodOptions({
    this.card,
    this.link,
  });

  factory PaymentMethodOptions.fromJson(Map<String, dynamic> json) => PaymentMethodOptions(
    card: json["card"] == null ? null : Card.fromJson(json["card"]),
    link: json["link"] == null ? null : Link.fromJson(json["link"]),
  );

  Map<String, dynamic> toJson() => {
    "card": card?.toJson(),
    "link": link?.toJson(),
  };
}