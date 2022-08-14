import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  String newTask = '';
  // late final Function addTaskCallback;
  //
  // AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                ),
              ),
              TextField(
                onChanged: (text) {
                  newTask = text;
                },
                autofocus: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  // filled: false,
                  focusColor: Colors.lightBlueAccent,
                  border: UnderlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                    ..addData(newTask);
                  Navigator.pop(context);
                },
                child: Text('ADD'),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  primary: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
