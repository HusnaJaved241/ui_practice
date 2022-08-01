import 'package:flutter/material.dart';
import 'package:practice/todo_design/tasks_book.dart';

import 'constants.dart';

class ActiveTasks extends StatefulWidget {
  const ActiveTasks({Key? key}) : super(key: key);

  @override
  State<ActiveTasks> createState() => _ActiveTasksState();
}

class _ActiveTasksState extends State<ActiveTasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Active Tasks',
          style: kAppBarTextStyle,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 0; i < 5; i++) customTile(),
            ],
          ),
        ),
      ),
    );
  }
}
