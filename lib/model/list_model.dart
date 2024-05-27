
import 'dart:convert';


class ListModel {
  String? id;
  String? userId;
  String? contact;
  String? name;
  String? details;
  int? localType;
  int? createdAt;
  int? status;
  int? v;

  ListModel({
    this.id,
    this.userId,
    this.contact,
    this.name,
    this.details,
    this.localType,
    this.createdAt,
    this.status,
    this.v,
  });

  factory ListModel.fromJson(Map<String, dynamic> json) => ListModel(
    id: json["_id"],
    userId: json["_userId"],
    contact: json["_contact"],
    name: json["_name"],
    details: json["_details"],
    localType: json["_localType"],
    createdAt: json["_createdAt"],
    status: json["_status"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "_userId": userId,
    "_contact": contact,
    "_name": name,
    "_details": details,
    "_localType": localType,
    "_createdAt": createdAt,
    "_status": status,
    "__v": v,
  };
}
