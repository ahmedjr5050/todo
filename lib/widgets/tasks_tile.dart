import 'package:flutter/material.dart';
import 'package:todo/models/task.dart';

class TasksTile extends StatelessWidget {
  final Task task;
  final void Function(bool?) checkboxChanged;

  TasksTile({required this.task, required this.checkboxChanged});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.name,
        style: TextStyle(
          decoration: task.isDone ? TextDecoration.lineThrough : null,
          color: Colors.black,
          fontSize: 20,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: task.isDone,
        onChanged: checkboxChanged,
      ),
    );
  }
}
