// App ka theme dark krna hai main.dart me ***************

import 'package:flutter/material.dart';
import 'package:practice/constants.dart';

class DashboardUI2 extends StatelessWidget {
  const DashboardUI2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back),
        title: Text('Dashboard'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FirstWidget(),
            SecondWidget(context),
          ],
        ),
      ),
    );
  }
}

Widget FirstWidget() {
  return Row(
    children: [
      Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 23.0,
          vertical: 20.0,
        ),
        height: 85.0,
        width: 85.0,
        child: CircularProgressIndicator(
          backgroundColor: Color.fromARGB(255, 92, 89, 89),
          value: 0.4,
          strokeWidth: 4,
        ),
      ),
      Container(
        height: 80.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Overall \nDaily Progress',
              style: kNormalWhiteTextStyle,
            ),
            Text(
              '45% to go',
              style: kGreyTextStyle,
            )
          ],
        ),
      ),
    ],
  );
}

final containerList = [
  CustomContainer(
    Colors.blue,
    '9,850',
    'Steps',
    Icons.directions_run,
  ),
  CustomContainer(
    Colors.green,
    '2,430',
    'Calories Burnt',
    Icons.local_fire_department,
  ),
  CustomContainer(
    Colors.red,
    '70 bpm',
    'Avg, Heart rate',
    Icons.heart_broken,
  ),
  CustomContainer(
    Colors.yellow,
    '15 kms',
    'Distance',
    Icons.add_road,
  ),
];

Widget SecondWidget2() {
  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 20.0,
      mainAxisSpacing: 20.0,
      crossAxisSpacing: 10.0,
      childAspectRatio: 4.0,
    ),
    itemBuilder: (BuildContext context, int index) {
      return containerList[index];
    },
  );
}

Widget SecondWidget(context) {
  return Container(
    height: 450.0,
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          children: [
            Expanded(
              flex: 2,
              child: CustomContainer(
                  Colors.blue, '9,850', 'Steps', Icons.directions_run),
            ),
            Expanded(
              flex: 1,
              child: CustomContainer(Colors.green, '2,430', 'Calories Burnt',
                  Icons.local_fire_department),
            ),
          ],
        ),
        Column(
          children: [
            Expanded(
              flex: 1,
              child: CustomContainer(
                  Colors.red, '70 bpm', 'Avg, Heart rate', Icons.heart_broken),
            ),
            Expanded(
                flex: 2,
                child: CustomContainer(
                    Colors.yellow, '15 kms', 'Distance', Icons.add_road)),
          ],
        ),
      ],
    ),
  );
}

Widget CustomContainer(
  Color clr,
  String text1,
  String text2,
  IconData icon,
) {
  return Container(
    width: 160.0,
    padding: const EdgeInsets.all(12.0),
    margin: const EdgeInsets.all(5.0),
    color: clr,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start  ,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text1,
              style: kWhiteTextStyle,
            ),
            Icon(
              icon,
              size: 30.0,
            ),
          ],
        ),
        Text(
          text2,
          style: kNormalWhiteTextStyle,
        ),
      ],
    ),
  );
}
