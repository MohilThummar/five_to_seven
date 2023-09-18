class ToDoModel {
  int? id;
  String? title;
  String? content;
  String? time;

  ToDoModel({
    this.id,
    this.title,
    this.content,
    this.time,
  });

  ToDoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    content = json['sub_title'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "content": content,
        "time": time,
      };
}
