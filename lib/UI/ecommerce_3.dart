import 'package:flutter/material.dart';
import 'package:practice/constants.dart';

class EcommerceUI3 extends StatelessWidget {
  final children = [1, 2, 3, 4, 5, 6, 7];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ecommerce UI 3'),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          headingRow(
            'Categories',
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var i in children) firstRowWidget(),
              ],
            ),
          ),
          headingRow(
            'Featured Products',
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var i in children) secondRowWidget(),
              ],
            ),
          ),
          headingRow(
            'Recent Products',
          ),
          SingleChildScrollView(
            // scrollDirection: Axis.vertical,
            child: Column(
              children: [
                for (var i in children) thirdRowWidget(context),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

Widget firstRowWidget() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
    child: Column(
      children: [
        Container(
          height: 100.0,
          width: 100.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/dish2.jpg'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(12.0)),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Jjajangmyeon ',
          style: kTextStyle2,
        )
      ],
    ),
  );
}

Widget secondRowWidget() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 5.0),
    child: Stack(children: [
      Container(
        height: 100.0,
        width: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(12.0),
            topLeft: Radius.circular(12.0),
          ),
          image: DecorationImage(
              image: AssetImage('assets/images/dish3.jpg'), fit: BoxFit.cover),
        ),
      ),
      Positioned(
        bottom: 0.0,
        right: 0.0,
        left: 0.0,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          color: Color.fromARGB(183, 53, 33, 9),
          child: Text(
            'Bibimbap',
            style: kWhiteTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]),
  );
}

Widget thirdRowWidget(BuildContext context) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          Container(
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0)),
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/dish4.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 120.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Galbi', style: kTextStyle2),
                    Text('Rs. 8000', style: kBlueTextStyle),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    size: 30.0,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget headingRow(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: kHeadingTextStyle,
        ),
        Text(
          'View All',
          style: kTextStyle2,
        )
      ],
    ),
  );
}
