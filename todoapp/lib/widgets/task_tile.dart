import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TaskTile extends StatelessWidget {
  TaskTile({
    super.key,
    required this.isChecked,
    required this.taskTttle,
    required this.checkBox,
    required this.longPressm,
  });

  bool isChecked;
  final String taskTttle;
  final Function(void) checkBox;
  final Function() longPressm;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressm,
      title: Text(
        taskTttle,
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkBox,
      ),
    );
  }
}
