import 'package:flutter/material.dart';
import 'package:practice/constants.dart';

const uiColor = Color.fromARGB(255, 84, 97, 218);

class EcommerceUI7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ecommerce UI 7'),
        backgroundColor: uiColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            customRow('Subtotal', 'Rs. 500.0', kTextStyle2),
            customRow('Delivery Fee', 'Rs. 100.0', kTextStyle2),
            customRow('Total', 'Rs. 500.0', kHeadingTextStyle),
            headingWidget('DELIVERY FEE'),
            radioButtons(
                text1: 'Islamabad, Pakistan ',
                text2: 'Choose new delivery address'),
            headingWidget('CONTACT NUMBER'),
            radioButtons(
                text1: '+9213456789', text2: 'Choose new contact number'),
            headingWidget('PAYMENT OPTION'),
            radioButtons(text1: 'Cash on delivery ', text2: 'Pay via bank'),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 10.0,
              ),
              width: double.infinity,
              height: 45.0,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Confirm Order',
                  style: kTextStyle,
                ),
                style: ElevatedButton.styleFrom(
                  primary: uiColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class radioButtons extends StatefulWidget {
  const radioButtons({Key? key, required this.text1, required this.text2})
      : super(key: key);
  final String text1;
  final String text2;

  @override
  State<radioButtons> createState() => _radioButtonsState();
}

class _radioButtonsState extends State<radioButtons> {
  // Declare this variable
  int selectedRadioTile = 0;
  int selectedRadio = 0;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    selectedRadioTile = 0;
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          value: 1,
          groupValue: selectedRadioTile,
          title: Text(widget.text1),
          onChanged: (val) {
            setSelectedRadioTile(val as int);
          },
          activeColor: uiColor,
          selected: true,
        ),
        RadioListTile(
          value: 2,
          groupValue: selectedRadioTile,
          title: Text(widget.text2),
          onChanged: (val) {
            setSelectedRadioTile(val as int);
          },
          activeColor: uiColor,
          selected: false,
        ),
      ],
    );
  }
}

// Widget radioButtons(text1, text2) {
//   int selectedRadioTile =0;
//   int selectedRadio  = 0;

//   Color activeColor = uiColor;
//   String myOption = text1;
//   return StatefulBuilder(builder: (BuildContext context, setState) {
//     return Column(
//       children: <RadioListTile>[
//         RadioListTile(
//           selected: ,
//           title: Text(text1, style: TextStyle(color: text1.selected?),),
//           value: text1,
//           groupValue: myOption,
//           onChanged: (value) {
//             setState(() {
//               myOption = value.toString();
//             });
//           },

//         ),
//         RadioListTile(
//           title: Text(text2),
//           value: text2,
//           groupValue: myOption,
//           onChanged: (value) {
//             setState(() {
//               myOption = value.toString();
//             });
//           },

//         ),
//       ],
//     );
//   });
// }

Widget headingWidget(String text) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
    margin: const EdgeInsets.all(8.0),
    color: Color.fromARGB(255, 203, 224, 238),
    child: Text(
      text,
      style: kTextStyle2,
    ),
  );
}

Widget customRow(String text1, String text2, TextStyle textStyle) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: textStyle,
        ),
        Text(
          text2,
          style: textStyle,
        ),
      ],
    ),
  );
}
