class Task {
  String taskName;
  bool isDone;
  Task({this.isDone = false, this.taskName});

  void toggleCheckBox() {
    this.isDone = !isDone;
  }
}
