import 'package:flutter/material.dart';
import 'package:to_do_app/constants.dart';
class AddTaskScreen extends StatefulWidget {
  final void Function(String) addTask;

  AddTaskScreen({super.key ,required this.addTask});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String taskName ='';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Add Task',
              style: bottomSheetTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
                cursorColor: Colors.lightBlueAccent,
                decoration: bottomSheetTextFieldStyle,
                onChanged:(value) => {
                  setState(() {
                     taskName = value;
                  })
                },
                ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  widget.addTask(taskName);
                  Navigator.pop(context);
                },
                style: bottomSheetButtonStyle,
                child: const Center(
                  child: Text("Add"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
