import 'package:flutter/material.dart';
import 'package:to_do_app/Widgets/taskTile.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/main.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Tasks>(
      builder: (context, tasklistdata , child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: tasklistdata.tasks[index].isDone,
              taskTitle: tasklistdata.tasks[index].name,
              CheckBoxCallback: (bool? checkBoxState) {
                setState(() {
                  Provider.of<Tasks>(context, listen: false)
                      .tasks[index]
                      .toggleDone();
                });
              },
            );
          },
          itemCount: tasklistdata.tasklength(),
        );
      },
    );
  }
}
