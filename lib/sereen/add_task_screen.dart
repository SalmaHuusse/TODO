import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/tasl_data.dart';
class AddTaskScreen extends StatelessWidget {

  AddTaskScreen(this.addTaskCallback);
  final Function addTaskCallback;

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task' ,
              textAlign: TextAlign.center,
             style: TextStyle(
              fontSize: 30.0,
              color: Colors.amber[600],
            ),
            ),
            TextField(
              autocorrect:  true,
              textAlign: TextAlign.center,
              onChanged : (newText){
                newTaskTitle = newText;
              },
            ),
            FlatButton(
              onPressed: () {
               Provider.of<TaskData>(context , listen: false).addTask(newTaskTitle!);
               Navigator.pop(context);
            }, child: Text('Add' ,
              style: TextStyle(color: Colors.white),),
            color: Colors.amber[600],
            ),
          ],
        ),
      ),
    );
  }
}
