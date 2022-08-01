import 'package:flutter/material.dart';
import 'package:practice/constants.dart';

class EcommerceUI2 extends StatelessWidget {
  const EcommerceUI2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: Text('Ecommerce UI 2'),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
                child: CustomCard(index),
              );
            },
          ),
          Positioned(
            bottom: 0.0,
            child: BottomWidget(),
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final int index;

  const CustomCard( this.index);

  @override
  Widget build(BuildContext context) {
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
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/dish1.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0)),
              ),
              height: 100.0,
              width: 100.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 130.0,
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Item Name', style: kTextStyle),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Price: Rs. 200',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Sub Total: Rs. 200',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Shipping Free',
                        style: TextStyle(fontSize: 17.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: addButtons(index),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget addButtons(int index) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Align(
        alignment: Alignment.center,
        child: customCardContainer(
            '-',
            TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 28.0,
            ),
            0.0,
            0.0,
            0.0),
      ),
      customCardContainer(
        (index + 1).toString(),
        TextStyle(fontSize: 20.0),
        10.0,
        8.0,
        4.0,
      ),
      Icon(
        Icons.add,
        color: Colors.green,
        size: 25.0,
      ),
    ],
  );
}

Widget customCardContainer(String text, TextStyle textStyle, double elevation,
    double hor, double ver) {
  return Card(
    elevation: elevation,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: hor, vertical: ver),
      alignment: Alignment.center,
      child: Text(
        text,
        style: textStyle,
        textAlign: TextAlign.center,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );
}

class BottomWidget extends StatelessWidget {
  const BottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: const EdgeInsets.all(10.0),
      color: Colors.grey,
      width: MediaQuery.of(context).size.width,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Checkout Price: ',
              style: kTextStyle2,
            ),
            Text(
              'Rs. 2000',
              style: kTextStyle2,
            )
          ],
        ),
        SizedBox(
          width: double.infinity,
          height: 45.0,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Checkout',
              style: kTextStyle,
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.redAccent,
            ),
          ),
        )
      ]),
    );
  }
}
