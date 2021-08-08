import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final ValueChanged<bool?> toogleCheckbox;

  TaskTile(
      {required this.title,
      required this.isChecked,
      required this.toogleCheckbox});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: toogleCheckbox,
      ),
    );
  }
}
