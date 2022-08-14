import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked = false;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  final Function()? longpressCallback;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback,
      this.longpressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
