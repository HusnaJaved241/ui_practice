// import 'package:flutter/material.dart';
// import 'package:practice/constants.dart';

// class EcommerceUI6 extends StatelessWidget {
//   const EcommerceUI6({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(

//         body: Container(
//           height: MediaQuery.of(context).size.height,
//           child: Stack(
//             children: [
//               ImageContainer(),
//               Padding(
//                 padding: const EdgeInsets.only(left: 20.0, top: 20.0),
//                 child: Text(
//                   'Good Morning Everyone',
//                   style: kWhiteBoldHeadingTextStyle,
//                 ),
//               ),
//               Positioned(
//                 top: 120.0,
//                 left: 0.0,
//                 right: 0.0,
//                 child: SearchField(),
//               ),
//               SliverPadding(
//                     padding: const EdgeInsets.all(26.0),
//                     sliver: SliverGrid.count(
//                       crossAxisCount: 2,
//                       mainAxisSpacing: 10,
//                       crossAxisSpacing: 10,
//                       children: <Widget>[
//                         customCard('assets/images/broccoli.png', 'Brocoli', '30'),
//                         customCard('assets/images/cabbage.png', 'Cabbage', '37'),
//                         customCard('assets/images/mango.png', 'Mango', '22'),
//                         customCard('assets/images/apple.png', 'Apple', '90'),
//                       ],
//                     ),
//                   ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ImageContainer extends StatelessWidget {
//   const ImageContainer({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 300.0,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage(
//             'assets/images/food_bg.jpg',
//           ),
//           fit: BoxFit.cover,
//         ),
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(60.0),
//           bottomRight: Radius.circular(60.0),
//         ),
//       ),
//     );
//   }
// }

// class SearchField extends StatelessWidget {
//   const SearchField({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.center,
//       child: Container(
//         width: MediaQuery.of(context).size.width - 80.0,
//         child: TextFormField(
//           decoration: InputDecoration(
//             filled: true,
//             hintText: 'Search...',
//             fillColor: Colors.white,
//             border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(
//                   30.0,
//                 ),
//                 borderSide: BorderSide.none),
//             suffixIcon: Icon(
//               Icons.search,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// Widget productCards(BuildContext context) {
//   return Container(
//     margin: const EdgeInsets.symmetric(horizontal: 5.0),
//     height: MediaQuery.of(context).size.height - 100.0,
//     // width: double.infinity,
//     color: Colors.purple,
//     padding: const EdgeInsets.all(0.0),
//     // alignment: Alignment.bottomCenter,
//     child: Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Row(
//           children: [
//             Expanded(
//               child: customCard(),
//             ),
//             Expanded(
//               child: customCard(),
//             ),
//           ],
//         ),
//         Row(
//           children: [
//             Expanded(
//               child: customCard(),
//             ),
//             Expanded(
//               child: customCard(),
//             ),
//           ],
//         ),
//       ],
//     ),
//   );
// }

// Widget customCard(String image, String name, String price) {
//   return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 12.0),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Image.asset(
//               image,
//               height: 100.0,
//               width: 100.0,
//             ),
//             Text(
//             name,
//               style: kTextStyle,
//             ),
//             Container(
//                 color: Colors.orange,
//                 padding: const EdgeInsets.all(5.0),
//                 margin: const EdgeInsets.all(5.0),
//                 child: Text(
//                   'Rs.' + price,
//                   style: kWhiteTextStyle,
//                 ))
//           ],
//         ),
//       ));
// }

import 'package:flutter/material.dart';

class EcommerceUI6 extends StatelessWidget {
  const EcommerceUI6({Key? key}) : super(key: key);

  Widget cards(image, title, price) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              image,
              height: 80,
            ),
            SizedBox(
              height: 5,
            ),
            Text(title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(top: 4),
                color: Colors.deepOrange,
                child: Text("\$ " + price,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12))),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Today\'s Special',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.fastfood,
                  color: Colors.deepOrange,
                ),
                label: 'Foods'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
        backgroundColor: Colors.white70.withOpacity(0.9),
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: Colors.orangeAccent.shade700,
                ),
                width: double.infinity,
              ),
              Container(
                margin: EdgeInsets.only(left: 90, bottom: 20),
                width: 299,
                height: 279,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent.shade400,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(160),
                        bottomLeft: Radius.circular(290),
                        bottomRight: Radius.circular(160),
                        topRight: Radius.circular(10))),
              ),
              CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Good Morning",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white)),
                          Text("Everyone",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white)),
                          SizedBox(
                            height: 40,
                          ),
                          Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: TextField(
                              controller:
                                  TextEditingController(text: 'Search...'),
                              cursorColor: Theme.of(context).primaryColor,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                              decoration: InputDecoration(
                                  suffixIcon: Material(
                                    elevation: 2.0,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    child: Icon(Icons.search),
                                  ),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 13)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.all(26.0),
                    sliver: SliverGrid.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: <Widget>[
                        cards('assets/images/broccoli.png', 'Brocoli', '30'),
                        cards('assets/images/cabbage.png', 'Cabbage', '37'),
                        cards('assets/images/mango.png', 'Mango', '22'),
                        cards('assets/images/apple.png', 'Apple', '90'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
