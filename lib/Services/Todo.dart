

import 'package:dio/dio.dart';
import 'package:firstapp/models/TodoList.dart';

class TodoServ {
  String url = "https://jsonplaceholder.typicode.com/todos";

  Future<List<Todo>> getTodos() async {
    List<Todo> todos = [];
    Response response = await Dio().get(url);
    var data = response.data;
    data.forEach((value) {
      todos.add(Todo.fromJson(value));
    });
    return todos;
  }
}
