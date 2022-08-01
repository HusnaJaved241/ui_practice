// iskliye app ka theme dark rkhna pary ga main.dart me
import 'package:flutter/material.dart';
import 'package:practice/constants.dart';

class SettingsUI2 extends StatelessWidget {
  const SettingsUI2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 20.0,
            ),
            child: Column(
              children: [
                FirstWidget(),
                SecondWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget FirstWidget() {
  return ListTile(
    leading: CircleAvatar(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      backgroundImage: AssetImage('assets/images/dp.jpg'),
    ),
    title: Text(
      'Husna Javed',
      style: kWhiteTextStyle,
    ),
    subtitle: Text('Pakistan'),
  );
}

Widget SecondWidget() {
  return Column(
    children: [
      CustomListTile(
        'Language',
        'English US',
        Icon(Icons.keyboard_arrow_right),
      ),
      CustomListTile(
        'Profile Settings',
        'Husna Javed',
        Icon(Icons.keyboard_arrow_right),
      ),
      SwitchListTile(
        title: Text('Email Notifications'),
        subtitle: Text('On'),
        value: true,
        onChanged: (value) {},
      ),
      SwitchListTile(
        value: false,
        onChanged: (value) {},
        title: Text('Push Notifications'),
        subtitle: Text('Off'),
      ),
      CustomListTile(
        'Logout',
        '',
        Icon(Icons.logout_outlined),
      ),
    ],
  );
}

Widget CustomListTile(String titleText, String subTitleText, Icon icon) {
  return ListTile(
    title: Text(titleText),
    subtitle: Text(subTitleText),
    trailing: icon,
  );
}
