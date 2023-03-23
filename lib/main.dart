import 'package:flutter/material.dart';
import 'package:todolistapp/pages/tasklist/tasklist.dart';
import './pages/tasklistdetail/tasklistdetail.dart';
import 'package:todolistapp/authscreen/authscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/tasklist': ((context) => const TaskListPage(title: "Task List Page")),
        '/tasklistdetail': ((context) =>
            const TaskListDetailPage(title: "Task List Detail Page")),
        '/login': ((context) => AuthScreen()),
      },
    );
  }
}
