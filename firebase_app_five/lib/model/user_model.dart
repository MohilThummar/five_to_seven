// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  int? age;
  String? name;
  List<String>? skill;

  UserModel({
    this.age,
    this.name,
    this.skill,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        age: json["age"],
        name: json["name"],
        skill: json["skill"] == null ? [] : List<String>.from(json["skill"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "age": age,
        "name": name,
        "skill": skill == null ? [] : List<dynamic>.from(skill!.map((x) => x)),
      };
}
