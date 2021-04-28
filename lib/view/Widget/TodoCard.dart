import 'package:firstapp/models/TodoList.dart';
import 'package:firstapp/view/Pages/TodoDet.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TodoCard extends StatefulWidget {
  String title;
  String compeleted;
  final Todo todo;
  TodoCard({this.todo,this.title,this.compeleted});

  @override
  _TodoCardState createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {
  @override
  Widget build(BuildContext context) {
       return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
              TodoDet(title: widget.title, compeleted: widget.compeleted),
            ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.2,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.compeleted,
                 // style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}






