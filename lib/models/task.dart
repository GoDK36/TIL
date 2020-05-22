class Task {

  final String name;
  bool isDone;

  Task({this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone; //느낌표는 반대로 만들어준다
  }
}