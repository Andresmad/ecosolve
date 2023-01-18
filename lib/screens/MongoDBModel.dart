import 'dart:convert';
import 'package:mongo_dart/mongo_dart.dart';

MongoDbModel mongoDvModelFromJson(String str) =>
    MongoDbModel.fromJson(json.decode(str));

String mongoDbModelToJson(MongoDbModel data) => json.encode(data.toJson());

class MongoDbModel {
  MongoDbModel({
    required this.id,
    required this.user_email,
    required this.user_password,
  });

  Object id;
  String user_email;
  String user_password;

  factory MongoDbModel.fromJson(Map<String, dynamic> json) => MongoDbModel(
        id: json["_id"],
        user_email: json["user_email"],
        user_password: json["user_password"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "user_email": user_email,
        "user_password": user_password,
      };
}
