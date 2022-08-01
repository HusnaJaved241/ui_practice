import 'package:flutter/material.dart';

import 'tasks_book.dart';
import 'constants.dart';

class CompletedTasks extends StatelessWidget {
  const CompletedTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Completed Tasks',
          style: kAppBarTextStyle,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                for (int i = 0; i < 15; i++) customTile(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
