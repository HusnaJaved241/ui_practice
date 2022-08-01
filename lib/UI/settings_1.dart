import 'package:flutter/material.dart';
import 'package:practice/constants.dart';

class SettingsUI1 extends StatelessWidget {
  const SettingsUI1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color.fromARGB(220, 248, 248, 248),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Settings',
          style: kTextStyle,
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FirstWidget(),
            SizedBox(
              height: 20.0,
            ),
            SecondWidget(),
            CustomHeading(),
            ThirdWidget(),
          ],
        ),
      ),
      floatingActionButton: Stack(children: [
        Positioned(
          left: -10.0,
          bottom: -10.0,
          child: Theme(
            data: Theme.of(context).copyWith(
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                sizeConstraints:
                    BoxConstraints.tightFor(width: 100.0, height: 100.0),
              ),
            ),
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.purple,
              child: Icon(
                Icons.power_settings_new,
                size: 40.0,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

Widget FirstWidget() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 15.0),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 203, 66, 228),
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: ListTile(
      minVerticalPadding: 20.0,
      leading: CircleAvatar(
        // child: Image.asset('assets/images/dp.jpg', fit: BoxFit.fill,),
        backgroundImage: AssetImage('assets/images/dp.jpg'),
      ),
      title: Text(
        'Husna Javed',
        style: kWhiteTextStyle,
      ),
      trailing: Icon(
        Icons.edit,
        color: Colors.white,
      ),
    ),
  );
}

Widget SecondWidget() {
  return Card(
    margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    child: Column(
      children: [
        CustomListTile(
            Icon(
              Icons.lock,
              color: Colors.purple,
            ),
            'Change Password'),
        CustomDivider(),
        CustomListTile(
            Icon(
              Icons.language_rounded,
              color: Colors.purple,
            ),
            'Change Language'),
        CustomDivider(),
        CustomListTile(
            Icon(
              Icons.location_pin,
              color: Colors.purple,
            ),
            'Change Location'),
      ],
    ),
  );
}

Widget CustomListTile(Icon icon, String titleText) {
  return ListTile(
    leading: icon,
    title: Text(
      titleText,
      style: kNormalTextStyle,
    ),
    trailing: Icon(Icons.arrow_forward_ios),
  );
}

Widget CustomDivider() {
  return Divider(
    height: 10.0,
    color: Colors.grey,
    indent: 10.0,
    endIndent: 10.0,
    //  height: 5.0,
  );
}

Widget CustomHeading() {
  return Container(
    padding: const EdgeInsets.only(left: 18.0),
    alignment: Alignment.centerLeft,
    child: Text(
      'Notification Settings',
      style: TextStyle(
        color: Color.fromARGB(255, 217, 105, 245),
        fontSize: 28.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget ThirdWidget() {
  return Column(
    children: [CustomToggleTile('Receive Notification')],
  );
}

Widget CustomToggleTile(String titleText) {
  // return ToggleButtons(children: [], isSelected: []);
  // return ListTile(
  //   title: Text(
  //     titleText,
  //     style: kNormalTextStyle,
  //   ),
  //   trailing: Icon(
  //     Icons.toggle_on,
  //     color: Colors.purple,
  //     size: 30.0,
  //   ),
  // );
  return SwitchListTile(
    activeColor: Colors.purple,
    value: true,
    onChanged: (value) {},
    title: Text(
      titleText,
      style: kNormalTextStyle,
    ),
  );
}
