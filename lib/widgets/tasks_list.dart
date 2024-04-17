import 'package:flutter/material.dart';
import 'package:todo/models/task.dart';
import 'package:todo/widgets/tasks_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasksList;
 TasksList( this.tasksList);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
 

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasksList.length,
      itemBuilder: (context, index) {
        return TasksTile(
          task: widget.tasksList[index],
          checkboxChanged: (isChecked) {
            setState(() {
              widget.tasksList[index].toggleDone();
            });
          },
        );
      },
    );
  }
}
