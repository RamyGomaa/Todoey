import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function onToggle;
  final Function deleteTask;
  TaskTile({
    this.isChecked = false,
    @required this.taskTitle,
    @required this.onToggle,
    @required this.deleteTask,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTask,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlue,
        onChanged: onToggle,
        value: isChecked,
      ),
    );
  }
}
