import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskList extends StatefulWidget {

  final List<Task> tasks;

  TaskList({this.tasks});

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        Task task = widget.tasks[index];
        return TaskTile(
          taskTitile: task.name,
          isChecked: task.isDone,
          checboxCallback: (bool checkBoxState) {
            setState(() {
              task.toggleDone();
            });
          }
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
