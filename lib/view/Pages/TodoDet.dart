import 'package:flutter/material.dart';

class TodoDet extends StatefulWidget {
   final String compeleted;
  final String title;
  TodoDet({this.compeleted, this.title});
  @override
  _TodoDetState createState() => _TodoDetState();
}

class _TodoDetState extends State<TodoDet> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
        
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                widget.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(widget.compeleted),
              
            ],
          ),
        ),
      ),
    );
  }
}