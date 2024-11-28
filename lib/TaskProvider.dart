import 'package:flutter/material.dart';
import 'package:tasks/DatabaseHelper.dart';
import 'package:tasks/TaskModel.dart';


class TaskProvider with ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  Future<void> fetchTasks() async {
    final db = DatabaseHelper();
    _tasks.clear();
    _tasks.addAll(await db.getTasks());
    notifyListeners();
  }

  Future<void> addTask(Task task) async {
    final db = DatabaseHelper();
    await db.insertTask(task);
    fetchTasks();
  }
}
