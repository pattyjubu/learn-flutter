import 'package:flutter/material.dart';
import 'package:flutter_todo_app/util/dbhelper.dart';
import 'package:flutter_todo_app/model/todo.dart';
import 'package:flutter_todo_app/screens/todolist.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<Todo> todos = List<Todo>();
    DbHelper  helper = DbHelper();
    helper.initializeDb().then(
      (result) => helper.getTodos().then((result) => todos=result));
    DateTime today = DateTime.now();
    Todo todo = Todo("Buy Apples", 1, today.toString(), "Add make sure they are good");
    helper.insertTodo(todo);

    return new MaterialApp(
      title: 'Todos',
      theme: new ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: new MyHomePage(title: 'Todos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        ),
      body: TodoList(),
    );
  }
}
