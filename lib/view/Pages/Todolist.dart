import 'package:firstapp/Services/Todo.dart';
import 'package:firstapp/models/TodoList.dart';
import 'package:firstapp/view/Widget/TodoCard.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  bool loading = true;
  List<Todo> todo = [];

  getData() async {
    todo = await TodoServ().getTodos();
    loading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TodoList"),
      ),
      body: loading
          ? Center(
              child: CircularProgressIndicator(
              backgroundColor: HexColor("#1d4354"),
            )
            )
          : ListView.builder(
              itemCount: todo.length,
              itemBuilder: (BuildContext context, int index) {
                return TodoCard(
                  todo: todo[index],
                  title: todo[index].title,
                  compeleted: todo[index].title,
                );
              },
            ),
    );
  }
}
