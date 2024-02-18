import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String taskTitle;
  final void Function(bool?) CheckBoxCallback;
  TaskTile({required this.isChecked , required this.taskTitle , required this.CheckBoxCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: CheckBoxCallback,
          ),
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked == true ? TextDecoration.lineThrough : null),
      ),
    );
  }
}



