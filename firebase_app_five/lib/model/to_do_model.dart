// To parse this JSON data, do
//
//     final toDoModel = toDoModelFromJson(jsonString);

import 'dart:convert';

List<ToDoModel> toDoModelFromJson(String str) => List<ToDoModel>.from(json.decode(str).map((x) => ToDoModel.fromJson(x)));

String toDoModelToJson(List<ToDoModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ToDoModel {
  String? title;
  String? content;
  String? time;

  ToDoModel({
    this.title,
    this.content,
    this.time,
  });

  factory ToDoModel.fromJson(Map<String, dynamic> json) => ToDoModel(
        title: json["title"],
        content: json["content"],
        time: json["time"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "content": content,
        "time": time,
      };
}
