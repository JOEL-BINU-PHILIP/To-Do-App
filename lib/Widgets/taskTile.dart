import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Checkbox(
        value: true,
        onChanged: (value) => false,
      ),
      title: Text(' This is a task'),
    );
  }
}