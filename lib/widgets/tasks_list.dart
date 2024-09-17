import 'package:flutter/material.dart';
import 'package:today_app/models/task_data.dart';
import 'list_tile.dart';
import 'package:provider/provider.dart';


class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index){
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxChange: (newValue){
                taskData.updateTask(taskData.tasks[index]);
              },
              listTileDelete: (){
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
        );
      },
    );
  }
}



//   ListView(
//   children: [
//     TaskTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone,),
//     TaskTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone,),
//     TaskTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone,),
//   ],
// );