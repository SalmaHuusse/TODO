import 'package:flutter/material.dart';
import 'package:todo/models/tasl_data.dart';
import 'package:todo/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {

  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context ,taskData , child){
        return  ListView.builder(
            itemCount: taskData.tasks.length,
            itemBuilder: (context, index) {
              return TaskTiel(
                texkTitel:taskData.tasks[index].name,
                isChecked:taskData.tasks[index].isDone,
                checkboxChange: (newValue) {
           taskData.updateTask(taskData.tasks[index]);
                }, listTileDelete: () {
                   taskData.deleteTask(taskData.tasks[index]);
              },
              );
            }
        );
      },

    );
  }
}
