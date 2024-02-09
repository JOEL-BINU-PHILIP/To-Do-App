import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});
  final int index = 21;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: Padding( padding: EdgeInsets.only(bottom: 10 , right: 5),child: FloatingActionButton(onPressed: (){} , backgroundColor: Colors.lightBlueAccent, child: Icon(Icons.add ,size: 30, color: Colors.white,), shape: CircleBorder(), )),
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
                '12 Tasks',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            ),
            SizedBox( height: 20,),
            Expanded(
              child: Container(
                child: ListView.builder(itemBuilder: (BuildContext , index) {}, itemCount: 30,),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
