import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(taskName: "Buy Eggs"),
    Task(taskName: "Buy Milk"),
    Task(taskName: "Buy Bread"),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get tasksCount {
    return _tasks.length;
  }

  void addTask(String taskName) {
    _tasks.add(Task(taskName: taskName));
    notifyListeners();
  }

  void updateTasksList(Task task) {
    task.toggleCheckBox();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
