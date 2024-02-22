import 'package:flutter/material.dart';
import 'package:to_do_app/Screens/tasksScreen.dart';
import 'package:provider/provider.dart';
import 'dart:collection';
import 'package:to_do_app/models/Task.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Tasks();
      },
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

class Tasks extends ChangeNotifier{
    List<Task> _tasks = [
    Task(name: 'buy Milk'),
    Task(name: 'buy bread'),
    Task(name: 'buy chili powder')
  ];
   
  UnmodifiableListView<Task> get tasks {
   return UnmodifiableListView(_tasks);
  }

  int tasklength(){
    return _tasks.length;
  }
  
  void addTask(String taskName){
    final task = Task(name: taskName);
    _tasks.add(task);
    notifyListeners();
  }
}

