import 'package:flutter/material.dart';
import 'package:practice/constants.dart';

class DashboardUI3 extends StatelessWidget {
  const DashboardUI3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black87,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_add,
              ),
              label: 'Add Patient'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.watch_later_outlined,
              ),
              label: 'Revise'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Account'),
        ],
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Color.fromARGB(255, 136, 187, 228),
              toolbarHeight: 200.0,
              title: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dashboard',
                        style: kLargeWhiteTextStyle,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/dp.jpg'),
                        radius: 30.0,
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      'Dr. John Doe',
                      style: kCustomBoldWhiteTextStyle,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      'Md, (General Medium), DM \nCardiology',
                      style: kSmallWhiteTextStyle,
                    ),
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsetsDirectional.all(10.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(widgetList),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget WidgetOne() {
  return Text(
    'Appointments',
    style: kBoldHeadingTextStyle,
  );
}

Widget WidgetTwo() {
  return Card(
    margin: const EdgeInsets.symmetric(
      vertical: 10.0,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomColumn('Today', '18 patients'),
        CustomColumn('Canceled', ' 7 patients'),
      ],
    ),
  );
}

Widget WidgetThree() {
  return Row(
    children: [
      Expanded(
        flex: 2,
        child: CustomCard(
          'Number of patients',
          '1200',
          Icons.person_pin_outlined,
          Colors.pink,
        ),
      ),
      Expanded(
        flex: 1,
        child: CustomCard(
          'Admitted',
          '857',
          Icons.person_pin_outlined,
          Colors.green,
        ),
      ),
    ],
  );
}

Widget WidgetFour() {
  return Row(
    children: [
      Expanded(
        child: CustomCard('Discharged', '210', Icons.favorite, Colors.blue),
      ),
      Expanded(
        child: CustomCard('Dropped', '100', Icons.person, Colors.pink),
      ),
      Expanded(
        child: CustomCard('Arrived', '500', Icons.favorite, Colors.blue),
      ),
    ],
  );
}

Widget CustomCard(String text1, String text2, IconData icon, Color clr) {
  return Container(
    padding: const EdgeInsets.only(left: 15.0),
    margin: const EdgeInsets.only(right: 5.0, top: 10.0, bottom: 10.0),
    height: 150.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: clr,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 30.0,
        ),
        Text(
          text1,
          style: kWhiteTextStyle,
        ),
        Text(
          text2,
          style: kCustomBoldWhiteTextStyle,
        )
      ],
    ),
  );
}

final widgetList = [
  WidgetOne(),
  WidgetTwo(),
  WidgetThree(),
  WidgetFour(),
];

Widget CustomColumn(String text1, String text2) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Column(
      children: [
        Text(
          text1,
          style: kNormalTextStyle,
        ),
        Text(text2, style: kGreyTextStyle),
      ],
    ),
  );
}
