import 'package:flutter/material.dart';
// import 'package:pie_chart/pie_chart.dart';
import 'package:practice/constants.dart';
import 'package:fl_chart/fl_chart.dart';

class DashboardUI1 extends StatelessWidget {
  const DashboardUI1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 234, 234),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Dashboard',
          style: kTextStyle,
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.orange,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10.0, top: 3.0, bottom: 3.0),
            width: 50.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 3.0),
              borderRadius: BorderRadius.circular(30.0),
              image: DecorationImage(
                image: AssetImage('assets/images/dp.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FirstWidget(),
            CustomCard(SecondWidget(context)),
            CustomCard(ThirdWidget()),
          ],
        ),
      ),
    );
  }
}

Widget FirstWidget() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 10.0),
    child: Row(
      children: [
        Expanded(
          child: CustomContainer(
            Color.fromARGB(255, 112, 182, 240),
            '+500',
            'Leads',
          ),
        ),
        Expanded(
          child: CustomContainer(
            Color.fromARGB(255, 245, 102, 149),
            '+300',
            'Customers',
          ),
        ),
        Expanded(
          child: CustomContainer(
            Color.fromARGB(255, 126, 216, 129),
            '+1200',
            'Orders',
          ),
        ),
      ],
    ),
  );
}

Widget CustomContainer(Color clr, String text1, String text2) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 3.0),
    margin: const EdgeInsets.all(5.0),
    height: 100.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: clr,
    ),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        text1,
        style: kLargeWhiteTextStyle,
      ),
      Text(
        text2,
        style: kNormalTextStyle,
      )
    ]),
  );
}

Widget CustomCard(Widget child) {
  return Card(
    margin: const EdgeInsets.symmetric(
      horizontal: 12.0,
      vertical: 10.0,
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    child: child,
  );
}

Widget SecondWidget(context) {
  var customRadius = 90.0;
  var colorList = [
    Colors.blue.shade100,
    Colors.blue.shade200,
    Colors.blue.shade300,
    Colors.blue.shade400,
  ];
  return Container(
    width: double.infinity,
    height: 230.0,
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sales',
          style: kBoldHeadingTextStyle,
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          child: PieChart(
            PieChartData(
              centerSpaceRadius: 0.0,
              sections: [
                PieChartSectionData(
                  color: colorList[0],
                  value: 50,
                  radius: customRadius,
                  title: 'September',
                  titleStyle: kVerySmallWhiteTextStyle,
                ),
                PieChartSectionData(
                  color: colorList[1],
                  value: 30,
                  radius: customRadius,
                  title: 'August',
                  titleStyle: kVerySmallWhiteTextStyle,
                ),
                PieChartSectionData(
                  color: colorList[2],
                  value: 20,
                  radius: customRadius,
                  title: 'October',
                  titleStyle: kVerySmallWhiteTextStyle,
                ),
                PieChartSectionData(
                  color: colorList[3],
                  value: 10,
                  radius: customRadius,
                  title: 'July',
                  titleStyle: kVerySmallWhiteTextStyle,
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget ThirdWidget() {
  return Container(
    padding: const EdgeInsets.only(bottom: 40.0, top: 25.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
          ),
          child: Text(
            'Activities',
            style: kBoldHeadingTextStyle,
          ),
        ),
        SizedBox(
          height: 12.0,
        ),
        Row(
          children: [
            Expanded(
              child: ThirdWidgetChild(
                'Results',
                Icons.list,
              ),
            ),
            Expanded(
              child: ThirdWidgetChild(
                'Messages',
                Icons.sms,
              ),
            ),
            Expanded(
              child: ThirdWidgetChild(
                'Appointments',
                Icons.schedule,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget ThirdWidgetChild(String label, IconData icon) {
  return Column(
    children: [
      CircleAvatar(
        child: Icon(
          icon,
          color: Colors.orange,
        ),
        backgroundColor: Color(0xFFDFD8D8),
        radius: 25.0,
      ),
      SizedBox(
        height: 5.0,
      ),
      Text(
        label,
        style: kTextStyle2,
      ),
    ],
  );
}
