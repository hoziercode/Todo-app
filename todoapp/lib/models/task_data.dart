// ignore_for_file: avoid_types_as_parameter_names, non_constant_identifier_names

import 'dart:collection';
import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _task = [
    Task(name: 'Buy Milk'),
    Task(name: 'Add Name'),
    Task(name: 'Buy milk')
  ];

  UnmodifiableListView get task {
    return UnmodifiableListView(_task);
  }

  int get taskCount {
    return _task.length;
  }

  void addTask(String controller) {
    final tasks = Task(name: controller);
    _task.add(tasks);
    notifyListeners();
  }
  void updateTask(Task, tasks) {
    tasks.toggleIsDone();
    notifyListeners();
  }

  void deleteTask(Task, tasks) {
    _task.remove(tasks);
    notifyListeners();
  }
}
