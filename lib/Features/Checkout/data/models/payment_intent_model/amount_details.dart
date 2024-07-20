import 'package:checkout_app/Features/Checkout/data/models/payment_intent_model/meta_data.dart';

class AmountDetails {
  final Metadata? tip;

  AmountDetails({
    this.tip,
  });

  factory AmountDetails.fromJson(Map<String, dynamic> json) => AmountDetails(
    tip: json["tip"] == null ? null : Metadata.fromJson(json["tip"]),
  );

  Map<String, dynamic> toJson() => {
    "tip": tip?.toJson(),
  };
}