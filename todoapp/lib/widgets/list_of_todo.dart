import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';
import '../models/task.dart';

// ignore: must_be_immutable
class ListOfTodo extends StatelessWidget {
  ListOfTodo({
    super.key,
  });
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskdata.task[index].isDone,
              taskTttle: taskdata.task[index].name,
              checkBox: (value) {
                taskdata.updateTask(
                  Task,
                  taskdata.task[index],
                );
              },
              longPressm: () {
                taskdata.deleteTask(Task, taskdata.task);
              },
            );
          },
          itemCount: taskdata.taskCount,
        );
      },
    );
  }
}
