import 'package:flutter/material.dart';
import 'package:to_do_app/Widgets/taskList.dart';
import 'package:to_do_app/constants.dart';
import 'package:to_do_app/Screens/addTaskScreen.dart';
import 'package:to_do_app/models/Task.dart';
class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});
  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {  
  List<Task> task = [
    Task(name: 'buy Milk'),
    Task(name: 'buy bread'),
    Task(name: 'buy chili powder')
  ];
  
  Widget buildBottomsheet(BuildContext context) {
    return Container(
      height: 400,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10, right: 5),
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet<void>(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              context: context,
              builder: (BuildContext context) {
                return AddTaskScreen(addTask: (taskName){
                  setState(() {
                     task.add(Task(name: taskName));
                  });
                });
              },
            );
          },
          backgroundColor: Colors.lightBlueAccent,
          shape: const CircleBorder(),
          child: FABIcon,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 10),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: Icon(
                  Icons.list,
                  size: 45,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Todoey',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                '${task.length} Tasks',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 20, bottom: 10),
                  child: TasksList(tasks: task),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
