class Todo {
  Todo({
    this.userId,
    this.id,
    this.title,
    this.compeleted,
  });

  int userId;
  int id;
  String title;
  bool compeleted;

  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        compeleted: json["compeleted"],
      );
}