import 'package:flutter/material.dart';
import 'package:practice/UI/settings_1.dart';
import 'package:practice/UI/settings_3.dart';

import '../constants.dart';

class SettingsUI4 extends StatelessWidget {
  const SettingsUI4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1EDED),
      appBar: AppBar(
        backgroundColor: Color(0xFFF1EDED),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.green,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeadingWidget('Settings'),
            SubHeadingRow(
                'Account',
                Icon(
                  Icons.account_circle_outlined,
                  color: Colors.green,
                )),
            CustomDivider(),
            FirstWidget(),
            SubHeadingRow(
              'Notfications',
              Icon(
                Icons.volume_up_outlined,
                color: Colors.green,
              ),
            ),
            CustomDivider(),
            SecondWidget(),
            CustomElevatedButton(),
          ],
        ),
      ),
    );
  }
}

Widget SubHeadingRow(String titleText, Icon icon) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
    child: Row(
      children: [
        icon,
        SizedBox(
          width: 15.0,
        ),
        Text(
          titleText,
          style: kTextStyle,
        ),
      ],
    ),
  );
}

Widget CustomListTile(String titleText, Icon icon) {
  return ListTile(
    title: Text(
      titleText,
      style: TextStyle(
        color: Colors.grey,
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    trailing: icon,
  );
}

Widget FirstWidget() {
  return Column(
    children: [
      CustomListTile(
        'Change Password',
        Icon(Icons.arrow_forward_ios),
      ),
      CustomListTile(
        'Content Settings',
        Icon(Icons.arrow_forward_ios),
      ),
      CustomListTile(
        'Social Media',
        Icon(Icons.arrow_forward_ios),
      ),
      CustomListTile(
        'Language',
        Icon(Icons.arrow_forward_ios),
      ),
      CustomListTile(
        'Privacy and Policy',
        Icon(Icons.arrow_forward_ios),
      ),
    ],
  );
}

Widget SecondWidget() {
  return Column(
    children: [
      CustomListTile(
        'New Update',
        Icon(
          Icons.toggle_on,
          size: 40.0,
          color: Colors.green,
        ),
      ),
      CustomListTile(
        'Account Status',
        Icon(
          Icons.toggle_off,
          size: 40.0,
        ),
      ),
    ],
  );
}

Widget CustomElevatedButton() {
  return Container(
    margin: const EdgeInsets.only(top: 30.0, bottom: 20.0),
    child: ElevatedButton(
      onPressed: () {},
      child: Text(
        'Logout',
        style: kNormalTextStyle,
      ),
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 224, 220, 220),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            30.0,
          ),
          side: BorderSide(
            color: Colors.grey,
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 25.0,
          vertical: 15.0,
        ),
      ),
    ),
  );
}
