// To parse this JSON data, do
//
//     final customerPaymentIntentModel = customerPaymentIntentModelFromJson(jsonString);

import 'dart:convert';
import 'package:checkout_app/Features/Checkout/data/models/customer_payment_intent_model/invoice_setting.dart';
import 'package:checkout_app/Features/Checkout/data/models/customer_payment_intent_model/meta_data.dart';

CustomerPaymentIntentModel customerPaymentIntentModelFromJson(String str) => CustomerPaymentIntentModel.fromJson(json.decode(str));

String customerPaymentIntentModelToJson(CustomerPaymentIntentModel data) => json.encode(data.toJson());

class CustomerPaymentIntentModel {
  final String? id;
  final String? object;
  final dynamic address;
  final int? balance;
  final int? created;
  final dynamic currency;
  final dynamic defaultSource;
  final bool? delinquent;
  final dynamic description;
  final dynamic discount;
  final dynamic email;
  final String? invoicePrefix;
  final InvoiceSettings? invoiceSettings;
  final bool? livemode;
  final Metadata? metadata;
  final dynamic name;
  final int? nextInvoiceSequence;
  final dynamic phone;
  final List<dynamic>? preferredLocales;
  final dynamic shipping;
  final String? taxExempt;
  final dynamic testClock;

  CustomerPaymentIntentModel({
    this.id,
    this.object,
    this.address,
    this.balance,
    this.created,
    this.currency,
    this.defaultSource,
    this.delinquent,
    this.description,
    this.discount,
    this.email,
    this.invoicePrefix,
    this.invoiceSettings,
    this.livemode,
    this.metadata,
    this.name,
    this.nextInvoiceSequence,
    this.phone,
    this.preferredLocales,
    this.shipping,
    this.taxExempt,
    this.testClock,
  });

  factory CustomerPaymentIntentModel.fromJson(Map<String, dynamic> json) => CustomerPaymentIntentModel(
    id: json["id"],
    object: json["object"],
    address: json["address"],
    balance: json["balance"],
    created: json["created"],
    currency: json["currency"],
    defaultSource: json["default_source"],
    delinquent: json["delinquent"],
    description: json["description"],
    discount: json["discount"],
    email: json["email"],
    invoicePrefix: json["invoice_prefix"],
    invoiceSettings: json["invoice_settings"] == null ? null : InvoiceSettings.fromJson(json["invoice_settings"]),
    livemode: json["livemode"],
    metadata: json["metadata"] == null ? null : Metadata.fromJson(json["metadata"]),
    name: json["name"],
    nextInvoiceSequence: json["next_invoice_sequence"],
    phone: json["phone"],
    preferredLocales: json["preferred_locales"] == null ? [] : List<dynamic>.from(json["preferred_locales"]!.map((x) => x)),
    shipping: json["shipping"],
    taxExempt: json["tax_exempt"],
    testClock: json["test_clock"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "object": object,
    "address": address,
    "balance": balance,
    "created": created,
    "currency": currency,
    "default_source": defaultSource,
    "delinquent": delinquent,
    "description": description,
    "discount": discount,
    "email": email,
    "invoice_prefix": invoicePrefix,
    "invoice_settings": invoiceSettings?.toJson(),
    "livemode": livemode,
    "metadata": metadata?.toJson(),
    "name": name,
    "next_invoice_sequence": nextInvoiceSequence,
    "phone": phone,
    "preferred_locales": preferredLocales == null ? [] : List<dynamic>.from(preferredLocales!.map((x) => x)),
    "shipping": shipping,
    "tax_exempt": taxExempt,
    "test_clock": testClock,
  };
}