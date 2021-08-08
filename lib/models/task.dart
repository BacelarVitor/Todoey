class Task {
  final String name;
  bool _isDone = false;

  Task({required this.name});

  void toggleDone() {
    _isDone = !_isDone;
  }

  bool getIsDone() {
    return _isDone;
  }
}
