import 'package:flutter/material.dart';

class TaskTiel extends StatelessWidget {
  @override
  final  bool isChecked;
  final String texkTitel;
  final void Function (bool?) checkboxChange;
  final void Function () listTileDelete;
TaskTiel({required this.isChecked , required this.texkTitel , required this.checkboxChange , required this.listTileDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
      texkTitel,
      style: TextStyle(
        decoration: isChecked ?  TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isChecked,
        onChanged: checkboxChange,
      ),
      onLongPress:listTileDelete ,
    );
  }
}
