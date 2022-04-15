import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/data/tasks_data.dart';
import 'package:state_managment/todo_app/models/task_model.dart';
import 'package:state_managment/todo_app/widgets/task_widget.dart';

import '../data/tasks_data.dart';
import '../widgets/task_widget.dart';

class InCompleteTasksScreen extends StatelessWidget {
  Function fun;
  Function delete;
  InCompleteTasksScreen(this.fun, this.delete);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.where((element) => !element.isCompleted).length,
        itemBuilder: (context, index) {
          return TaskWidget(tasksList
              .where((element) => !element.isCompleted)
              .toList()[index],fun,delete);
        });
  }
}
