import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget  {

 final bool isChecked;
 final String taskTitile;
 final Function checboxCallback;

 TaskTile({this.isChecked, this.taskTitile,this.checboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitile,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checboxCallback,
      )
      );
  }
}

class TaskCheckBox extends StatelessWidget {
  TaskCheckBox({this.isChecked, this.callback});

  final bool isChecked;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: callback,
      activeColor: Colors.lightBlueAccent,
    );
  }
}

/*
void checkboxCallBack
*/