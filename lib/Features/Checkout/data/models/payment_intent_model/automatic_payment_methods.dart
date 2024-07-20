class AutomaticPaymentMethods {
  final bool? enabled;

  AutomaticPaymentMethods({
    this.enabled,
  });

  factory AutomaticPaymentMethods.fromJson(Map<String, dynamic> json) => AutomaticPaymentMethods(
    enabled: json["enabled"],
  );

  Map<String, dynamic> toJson() => {
    "enabled": enabled,
  };
}