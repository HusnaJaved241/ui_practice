import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:practice/constants.dart';

const images = [
  "assets/images/ad1.jpg",
  "assets/images/ad2.jpg",
  "assets/images/ad3.jpg",
  "assets/images/ad4.jpg",
];

class EcommerceUI8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Ecommerce UI 8'),
          elevation: 0.0,
          backgroundColor: Color.fromARGB(255, 206, 82, 231),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              imageCarousel(),
              // SizedBox(height: 10.0,),
              SingleChildScrollView(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    catergoryWidget('Daraz Mall'),
                    catergoryWidget('Flash Sales'),
                    catergoryWidget('Collection'),
                    catergoryWidget('Vouchers'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TitleRow(),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  FirstRowWidgets(
                      'Rs. 275', 'assets/images/dish1.jpg', 'Kalguksu'),
                  FirstRowWidgets(
                      'Rs. 275', 'assets/images/dish2.jpg', 'Bibimbap'),
                  FirstRowWidgets(
                      'Rs. 275', 'assets/images/dish3.jpg', 'Jjajangmyeon'),
                  FirstRowWidgets(
                      'Rs. 275', 'assets/images/dish4.jpg', 'Jjajangmyeon'),
                ]),
              ),
              screenWidth > 400 ? LargeScreen() : SmallScreen(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          selectedItemColor: Colors.orange,
          unselectedLabelStyle: kGreyTextStyle,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          unselectedFontSize: 15.0,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}

Widget SmallScreen() {
  return Column(
    children: [
      for (int i = 0; i < 4; i++) SecondRowWidgets(),
    ],
  );
}

Widget LargeScreen() {
  return Row(children: [
    Expanded(
      child: SecondRowWidgets(),
    ),
    Expanded(
      child: SecondRowWidgets(),
    ),
  ]);
}

Widget imageCarousel() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
    child: ImageSlideshow(
      height: 150.0,
      children: [
        Image.asset(
          images[0],
          fit: BoxFit.cover,
        ),
        Image.asset(
          images[1],
          fit: BoxFit.cover,
        ),
        Image.asset(
          images[2],
          fit: BoxFit.cover,
        ),
        Image.asset(
          images[3],
          fit: BoxFit.cover,
        ),
      ],
      initialPage: 0,
      indicatorColor: Colors.deepPurple,
    ),
  );
}

Widget catergoryWidget(String label) {
  return Column(
    children: [
      CircleAvatar(
        child: Icon(Icons.home, color: Colors.white,),
        backgroundColor: Color.fromARGB(255, 209, 111, 226),
      ),
      SizedBox(
        height: 10.0,
      ),
      Text(
        label,
        style: kTextStyle2,
      ),
    ],
  );
}

Widget TitleRow() {
  return Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(children: [
        Text(
          'Flash Sales',
          style: kTextStyle,
        ),
        TimeLeftBox('02'),
        TimeLeftBox('20'),
        TimeLeftBox('30'),
      ]),
      Text(
        'Shop more >>',
        style: TextStyle(color: Color.fromARGB(255, 240, 129, 230), fontSize: 20.0),
      ),
    ],
  );
}

Widget TimeLeftBox(String text) {
  return Container(
    child: Text(
      text,
      style: kWhiteTextStyle,
    ),
    color: Colors.black,
    padding: const EdgeInsets.all(5.0),
    margin: const EdgeInsets.all(5.0),
  );
}

Widget FirstRowWidgets(String text, String imageAddress, String dishName) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Image.asset(
          imageAddress,
          height: 100.0,
        ),
        SizedBox(
          height: 7,
        ),
        Container(
          height: 20,
          width: 130.0,
          child: Text(
            dishName,
            textAlign: TextAlign.center,
            style: kSmallWhiteTextStyle,
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 247, 115, 207),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          text,
          style: kTextStyle2,
        )
      ],
    ),
  );
}

Widget SecondRowWidgets() {
  return Container(
    padding: const EdgeInsets.all(9.0),
    margin: const EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 234, 202, 240),
      border: Border(
        left: BorderSide(
          color: Color.fromARGB(255, 156, 73, 152),
          width: 15.0,
        ),
      ),
    ),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
        width: 100.0,
        child: Column(
          children: [
            Text(
              'Tangerine',
              style: kTextStyle,
            ),
            Text(
              '120 people want this',
              textAlign: TextAlign.center,
              style: kGreyTextStyle,
            ),
          ],
        ),
      ),
      Container(
        height: 50.0,
        child: Image.asset(
          'assets/images/food_bg.jpg',
        ),
      ),
    ]),
  );
}
