import 'package:flutter/material.dart';
import 'package:practice/UI/settings_1.dart';
import 'package:practice/constants.dart';

class SettingsUI3 extends StatelessWidget {
  const SettingsUI3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 220, 220),
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Color.fromARGB(255, 247, 126, 216),
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          HeadingWidget('ACCOUNT'),
          CustomCard(FirstWidget),
          HeadingWidget('PUSH NOTIFICATIONS'),
          CustomCard(SecondWidget),
          SizedBox(
            height: 15.0,
          ),
          CustomCard(ThirdWidget),
        ]),
      ),
    );
  }
}

Widget HeadingWidget(String text) {
  return Container(
    alignment: Alignment.topLeft,
    padding: const EdgeInsets.all(10.0),
    child: Text(
      text,
      style: kBoldHeadingTextStyle,
    ),
  );
}

Widget CustomCard(Widget widget) {
  return Card(
    margin: const EdgeInsets.symmetric(horizontal: 20.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(7.0),
    ),
    child: widget,
  );
}

final FirstWidget = Column(
  children: [
    ListTile(
      title: Text(
        'Husna Javed',
        style: kNormalTextStyle,
      ),
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/dp.jpg'),
      ),
    ),
    CustomDivider(),
    CustomToggleTile('Private Account'),
  ],
);

final SecondWidget = Column(
  children: [
    CustomToggleTile('Receive Notification'),
    CustomDivider(),
    CustomToggleTile('Receive Newsletter'),
    CustomDivider(),
    CustomToggleTile('Receive Offer Notification'),
    CustomDivider(),
    CustomToggleTile('Receive App Updates'),
  ],
);

final ThirdWidget = ListTile(
  leading: Icon(Icons.logout),
  title: Text('Logout'),
);
