import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, tasksData, child) {
        return ListView.builder(
          itemCount: tasksData.tasksCount,
          itemBuilder: (context, index) {
            final currentTask = tasksData.tasks[index];
            return TaskTile(
              taskTitle: currentTask.taskName,
              isChecked: currentTask.isDone,
              onToggle: (checkBoxState) {
                // setState(
                //   () {
                //     tasksData.tasks[index].toggleCheckBox(checkBoxState);
                //   },
                // );
                tasksData.updateTasksList(currentTask);
              },
              deleteTask: () {
                tasksData.deleteTask(currentTask);
              },
            );
          },
        );
      },
    );
  }
}
