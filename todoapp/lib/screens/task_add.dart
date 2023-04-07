import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class TaskAdd extends StatelessWidget {
  const TaskAdd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String? controller;
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF757575),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (value) {
                controller = value;
              },
            ),
            const SizedBox(
              height: 30.0,
            ),
            MaterialButton(
              color: Colors.lightBlueAccent,
              minWidth: 200.0,
              height: 50.0,
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(
                  controller.toString(),
                );
                Navigator.pop(context);
              },
              child: const Text(
                'ADD',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
