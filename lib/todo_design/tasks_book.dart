import 'package:flutter/material.dart';
import 'package:practice/todo_design/active_tasks.dart';
import 'package:practice/todo_design/constants.dart';

import 'completed_tasks.dart';
import 'home_page.dart';

class TasksBook extends StatelessWidget {
  const TasksBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tasks Book',
          style: kAppBarTextStyle,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Logout',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 243, 235, 235),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                firstWidget(
                  text: 'Active Tasks',
                  newScreen: ActiveTasks(),
                ),
                secondWidget(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                firstWidget(
                  text: 'Completed Tasks',
                  newScreen: CompletedTasks(),
                ),
                secondWidget(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) =>
                customAlertDialog(text: 'Add Task'),
          );
        },
        backgroundColor: appColor,
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}

class firstWidget extends StatelessWidget {
  firstWidget({
    Key? key,
    required this.text,
    required this.newScreen,
  }) : super(key: key);
  String text;
  Widget newScreen;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: kTextStyleOne,
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => newScreen),
            );
          },
          icon: Icon(
            Icons.more_horiz,
            color: Colors.grey,
            size: 40.0,
          ),
        ),
      ],
    );
  }
}

class secondWidget extends StatelessWidget {
  const secondWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customTile(),
        customTile(),
        customTile(),
        customTile(),
        customTile(),
      ],
    );
  }
}

class customTile extends StatelessWidget {
  const customTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 5.0,
        vertical: 7.0,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Row(
        // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.check_box_outline_blank,
                color: appColor,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.015,
              ),
              Text('Cook a delicious dinner'),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.015,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 2.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                child: Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        customAlertDialog(text: 'Update Task'),
                  );
                },
                icon: Icon(
                  Icons.edit_note_rounded,
                  size: 30.0,
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.015,
              ),
              Icon(
                Icons.delete_outlined,
                color: Colors.red[400],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class customAlertDialog extends StatefulWidget {
  customAlertDialog({
    Key? key,
    required this.text,
  }) : super(key: key);
  String text;

  @override
  State<customAlertDialog> createState() => _customAlertDialogState();
}

class _customAlertDialogState extends State<customAlertDialog> {
  List<String> category = ['Home', 'Family', 'Sports', 'Work'];
  List<String> priority = ['High', 'Medium', 'Normal'];
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.15,
          horizontal: MediaQuery.of(context).size.width * 0.005),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      alignment: Alignment.center,
      title: Text(
        widget.text,
        style: kAppBarTextStyle,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          12.0,
        ),
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          firstWidget1(
            text: 'What should be done?',
          ),
          customTextFormField(text: 'i.e Cook Dinner'),
          firstWidget1(text: 'Category'),
          customDropDown(category),
          Row(
            children: [
              rowChildren1(),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              rowChildren2(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customElevatedButton(
                text: 'Cancel',
                color: Colors.redAccent,
              ),
              customElevatedButton(
                text: 'Update',
                color: appColor,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget rowChildren1() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          firstWidget1(
            text: 'Due Date',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          GestureDetector(
            onTap: () => _selectDate(context),
            child: AbsorbPointer(
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  contentPadding: EdgeInsets.all(10.0),
                  hintText: 'Select',
                  suffixIcon: Icon(Icons.calendar_today),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget rowChildren2() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          firstWidget1(
            text: 'Task Priority',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          customDropDown(priority),
        ],
      ),
    );
  }

  Future<Null> _selectDate(BuildContext context) async {
    var selectedDate = DateTime.now();
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1901, 1),
        lastDate: DateTime(2100));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        String convertedDateTime =
            "${picked.year.toString()}-${picked.month.toString().padLeft(
                  2,
                  '0',
                )}-${picked.day.toString().padLeft(2, '0')}";
        // widget.textController.value = TextEditingValue(text: picked.toString());
        controller.value = TextEditingValue(text: convertedDateTime);
        ;
      });
  }

  Widget customDropDown(list) {
    String dropdownValue = '';

    return DropdownButtonFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 5.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      hint: Text('Select'),
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
    );
  }
}

class firstWidget1 extends StatelessWidget {
  firstWidget1({
    Key? key,
    required this.text,
  }) : super(key: key);
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class customElevatedButton extends StatelessWidget {
  customElevatedButton({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);
  String text;
  Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      onPressed: () {
        Navigator.pop(context);
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 15.0,
        ),
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
