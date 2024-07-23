class InvoiceSettings {
  final dynamic customFields;
  final dynamic defaultPaymentMethod;
  final dynamic footer;
  final dynamic renderingOptions;

  InvoiceSettings({
    this.customFields,
    this.defaultPaymentMethod,
    this.footer,
    this.renderingOptions,
  });

  factory InvoiceSettings.fromJson(Map<String, dynamic> json) => InvoiceSettings(
    customFields: json["custom_fields"],
    defaultPaymentMethod: json["default_payment_method"],
    footer: json["footer"],
    renderingOptions: json["rendering_options"],
  );

  Map<String, dynamic> toJson() => {
    "custom_fields": customFields,
    "default_payment_method": defaultPaymentMethod,
    "footer": footer,
    "rendering_options": renderingOptions,
  };
}