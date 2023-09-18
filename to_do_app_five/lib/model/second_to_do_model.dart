class SecondToDoModel {
  int? id;
  String? title;
  String? content;
  String? time;
  List<SubToDo>? subTodoList;
  SubToDo? subTodoMap;

  SecondToDoModel({
    this.id,
    this.title,
    this.content,
    this.time,
    this.subTodoList,
    this.subTodoMap,
  });

  SecondToDoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    content = json['content'];
    time = json['time'];
    subTodoList = (json['sub_todo_list'] as List<Map<String, dynamic>>).map((value) => SubToDo.fromJson(value)).toList();
    subTodoMap = SubToDo.fromJson(json['sub_todo_map']);
  }
}

class SubToDo {
  String? title;
  String? content;

  SubToDo({
    this.title,
    this.content,
  });

  SubToDo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    content = json['content'];
  }
}
