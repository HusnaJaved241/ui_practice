import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice/constants.dart';

class EcommerceUI4 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios_sharp,
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(children: [
        Center(
          child: Text(
            'Choose you plan',
            style: kBoldHeadingTextStyle,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          children: [
            Expanded(
                child: pricePlanCard(
                    'Free', '7 days',  context)),
            Expanded(
                child: pricePlanCard(
                    '\$450', 'Per week',  context)),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: pricePlanCard(
                    '\$900', 'Per month',  context)),
            Expanded(
                child: pricePlanCard(
                    '\$2000', 'Lifetime',  context)),
          ],
        ),
        payCards(
          'Paypal',
          'assets/svgs/paypal1.svg',
        ),
        payCards(
          'Google Pay',
          'assets/svgs/google_pay1.svg',
        ),
        payCards('Apple Pay', 'assets/svgs/apple_pay.svg'),
      ]),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        extendedPadding:
            const EdgeInsets.symmetric(horizontal: 65.0, vertical: 20.0),
        label: Text(
          'Continue',
          style: kWhiteTextStyle,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        )),
        backgroundColor: Color(0xff3f51b5),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

Widget payCards(String text, String svgAddress) {
  return Card(
    margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        15.0,
      ),
      side: BorderSide(color: Colors.grey, width: 0.3),
    ),
    child: ListTile(
      contentPadding:
          const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
      title: Text(
        text,
        style: kTextStyle2,
      ),
      leading: SvgPicture.asset(
        svgAddress,
        height: 30.0,
        color: Color(0xff3f51b5),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    ),
  );
}

Widget pricePlanCard(String price, String time, BuildContext context) {
  Color bgColor = Colors.white;
  Color textColor = Colors.black;
  bool isEnabled = false;
  return StatefulBuilder(
    builder: ((context, setState) {
      return GestureDetector(
        onTap: () {
          if(!isEnabled) 
          {setState(() {
            bgColor = Color(0xff3f51b5);
            textColor = Color.fromARGB(255, 244, 246, 247);
            isEnabled = true;
          });} else if (isEnabled) {
            setState(() {
              bgColor = Colors.white;
            textColor = Colors.black;
            isEnabled = false;
            });
          }
        },
        child: Card(
          color: bgColor,
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: BorderSide(
              color: Colors.grey,
              width: 0.3,
            ),
          ),
          child: Container(
            // width: 160.0,
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Column(children: [
              Text(
                price,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: textColor),
              ),
              Text(
                time,
                style: kGreyTextStyle,
              )
            ]),
          ),
        ),
      );
    }),
  );
}
