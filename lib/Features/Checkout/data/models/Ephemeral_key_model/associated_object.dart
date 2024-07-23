class AssociatedObject {
  final String? id;
  final String? type;

  AssociatedObject({
    this.id,
    this.type,
  });

  factory AssociatedObject.fromJson(Map<String, dynamic> json) => AssociatedObject(
    id: json["id"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "type": type,
  };
}