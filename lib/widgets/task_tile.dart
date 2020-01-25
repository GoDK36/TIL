import 'package:flutter/material.dart';


class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;  

  void toggleCheckedState(bool checkboxState) {
    setState(() {
      isChecked = checkboxState;
    });
  }


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a Task.',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        checkboxCallback: toggleCheckedState
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {

  final bool checkboxState;
  final Function checkboxCallback;

  TaskCheckbox({this.checkboxState, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: checkboxCallback,
    );
  }
}