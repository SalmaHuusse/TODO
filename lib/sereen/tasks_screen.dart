import 'package:flutter/material.dart';
import 'package:todo/models/tasl_data.dart';
import 'package:todo/sereen/add_task_screen.dart';
import 'package:todo/widgets/tasks_list.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[600],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber[600],
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) =>
              AddTaskScreen((newTaskTitle){
             // setState(() {
             //   tasks.add(Task(name: newTaskTitle));
             //   Navigator.pop(context);
             // }
            // );
              }));
        },),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

            padding: EdgeInsets.only(top: 60.0, right: 30.0, bottom: 30.0 , left: 20.0),
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.amber,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(' '
                    '${Provider.of<TaskData>(context).tasks.length} Tasks' ,
                style:  TextStyle(color: Colors.white,
                fontSize: 18.0),
                ),


              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}





