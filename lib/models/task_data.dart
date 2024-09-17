// import 'package:flutter/material.dart';
// import 'package:today_app/models/task.dart';
//
// class TaskData extends ChangeNotifier{
//   List<Task> tasks = [
//     Task(name: "task name"),
//     Task(name: "task name"),
//     Task(name: "task name"),
//   ];
//
//   void addTask(String newTaskTitle){
//     tasks.add(Task(name: newTaskTitle));
//     notifyListeners();
//   }
//
//   void updateTask(Task task){
//     task.doneChange();
//     notifyListeners();
//   }
//
//   void deleteTask(Task task){
//     tasks.remove(task);
//     notifyListeners();
//   }
//
// }





























import '../database/database.dart';
import '../models/task.dart';
import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];

  TaskData() {
    loadTasks();
  }

  Future<void> loadTasks() async {
    tasks = await DatabaseHelper().getTasks();
    notifyListeners();
  }

  void addTask(String newTaskTitle) async {
    Task task = Task(name: newTaskTitle);
    await DatabaseHelper().insertTask(task);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) async {
    task.doneChange();
    await DatabaseHelper().updateTask(task);
    notifyListeners();
  }

  void deleteTask(Task task) async {
    await DatabaseHelper().deleteTask(task);
    tasks.remove(task);
    notifyListeners();
  }
}
