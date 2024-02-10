import 'package:flutter/material.dart';
import 'package:to_do_app/Widgets/taskTile.dart';
class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        TaskTile(),
        TaskTile()
      ],
    );
  }
}