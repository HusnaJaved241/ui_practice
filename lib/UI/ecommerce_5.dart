import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practice/constants.dart';

class EcommerceUI5 extends StatelessWidget {
  const EcommerceUI5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/ipad.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Positioned(
            top: 25.0,
            left: 10.0,
            child: ElevatedButton(
              child: Icon(Icons.arrow_back_ios),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(113, 238, 155, 122),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            left: 0.0,
            top: MediaQuery.of(context).size.height - 280,
            child: productDescription(),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            left: 0.0,
            top: MediaQuery.of(context).size.height - 100,
            child: priceDescription(),
          ),
        ],
      ),
    );
  }
}

Widget productDescription() {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(
          15.0,
        ),
        topRight: Radius.circular(
          15.0,
        ),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 10.0,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'iPad Pro',
                style: kBoldHeadingTextStyle,
              ),
              Icon(Icons.favorite_border),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 13.0),
            child: Text(
                'Two sizes. Two industry-leading displays.The 11-inch display gives you an immersive and portable experience. And the 12.9-inch XDR display is a stunning and expansive way to view HDR content.'),
          ),
          ExpansionTile(
            title: Text(
              'Show Details',
              style: kTextStyle,
            ),
            trailing: Icon(
              Icons.arrow_drop_down,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget priceDescription() {
  return Card(
    color: Color.fromARGB(255, 66, 61, 61),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(
          15.0,
        ),
        topRight: Radius.circular(
          15.0,
        ),
      ),
    ),
    child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$799',
              style: kWhiteTextStyle,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Add to Cart',
                style: kWhiteTextStyle,
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  padding: const EdgeInsets.symmetric(
                      vertical: 13.0, horizontal: 20.0)),
            ),
          ],
        )),
  );
}
