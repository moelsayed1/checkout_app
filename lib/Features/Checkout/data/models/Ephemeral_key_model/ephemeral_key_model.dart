// To parse this JSON data, do
//
//     final ephemeralKeyModel = ephemeralKeyModelFromJson(jsonString);

import 'dart:convert';

import 'package:checkout_app/Features/Checkout/data/models/Ephemeral_key_model/associated_object.dart';

EphemeralKeyModel ephemeralKeyModelFromJson(String str) => EphemeralKeyModel.fromJson(json.decode(str));

String ephemeralKeyModelToJson(EphemeralKeyModel data) => json.encode(data.toJson());

class EphemeralKeyModel {
  final String? id;
  final String? object;
  final List<AssociatedObject>? associatedObjects;
  final int? created;
  final int? expires;
  final bool? livemode;
  final String? secret;

  EphemeralKeyModel({
    this.id,
    this.object,
    this.associatedObjects,
    this.created,
    this.expires,
    this.livemode,
    this.secret,
  });

  factory EphemeralKeyModel.fromJson(Map<String, dynamic> json) => EphemeralKeyModel(
    id: json["id"],
    object: json["object"],
    associatedObjects: json["associated_objects"] == null ? [] : List<AssociatedObject>.from(json["associated_objects"]!.map((x) => AssociatedObject.fromJson(x))),
    created: json["created"],
    expires: json["expires"],
    livemode: json["livemode"],
    secret: json["secret"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "object": object,
    "associated_objects": associatedObjects == null ? [] : List<dynamic>.from(associatedObjects!.map((x) => x.toJson())),
    "created": created,
    "expires": expires,
    "livemode": livemode,
    "secret": secret,
  };
}