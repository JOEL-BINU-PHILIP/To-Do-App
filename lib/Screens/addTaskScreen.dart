import 'package:flutter/material.dart';
import 'package:to_do_app/constants.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
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
                decoration: bottomSheetTextFieldStyle),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: TextButton(
                onPressed: () => Navigator.pop(context),
                style: bottomSheetButtonStyle,
                child: Center(
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
