import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  const AddTaskScreen(  this.addTaskCallback);
  static TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String? newTaskTile;
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                color: Colors.indigo[400],
                fontWeight: FontWeight.bold),
          ),
          TextField(
            onChanged: (newText) {
              newTaskTile = newText;
            },
            controller: controller,
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              addTaskCallback(newTaskTile);
             
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.teal[400],
            ),
            child: const Text('Add Task'),
          ),
        ],
      ),
    );
  }
}
