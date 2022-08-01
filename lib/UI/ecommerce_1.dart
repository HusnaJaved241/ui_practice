import 'package:flutter/material.dart';
import 'package:practice/models/ecommerce_1_model.dart';

class EcommerceUI1 extends StatelessWidget {
  List<Dishes> dishes = [
    Dishes(
        dish_image: 'assets/images/dish1.jpg',
        dish_name: 'Dish 1',
        dish_price: 'Rs. 200'),
    Dishes(
        dish_image: 'assets/images/dish2.jpg',
        dish_name: 'Dish 2',
        dish_price: 'Rs. 200'),
    Dishes(
        dish_image: 'assets/images/dish3.jpg',
        dish_name: 'Dish 3',
        dish_price: 'Rs. 200'),
    Dishes(
        dish_image: 'assets/images/dish4.jpg',
        dish_name: 'Dish 4',
        dish_price: 'Rs. 200'),
    Dishes(
        dish_image: 'assets/images/dish5.jpg',
        dish_name: 'Dish 5',
        dish_price: 'Rs. 200'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Positioned(
            // bottom: MediaQuery.of(context).size.height - 200,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        Container(
                          child: Row(children: [
                            Icon(
                              Icons.sort_outlined,
                              color: Colors.white,
                              size: 30.0,
                            ),
                            SizedBox(width: 30.0),
                            Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      'Delicious Food',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 107, 179, 109),
              ),
            ),
          ),
          Positioned(
            top: 140.0,
            bottom: 0.0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height - 50.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100.0),
                ),
              ),
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25.0,
                      vertical: 45.0,
                    ),
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading:
                            Image.asset(dishes.elementAt(index).dish_image),
                        title: Text(
                          dishes.elementAt(index).dish_name,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(dishes.elementAt(index).dish_price),
                        trailing: Icon(Icons.add),
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        color: Colors.transparent,
                      ),
                      CustomButton(
                        child: Icon(
                          Icons.shopping_cart_rounded,
                          color: Colors.black,
                        ),
                        color: Colors.transparent,
                      ),
                      CustomButton(
                        child: Text(
                          'Checkout',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        color: Color.fromARGB(255, 51, 3, 59),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Widget child;
  final Color color;
  CustomButton({required this.child, required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: child,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(90, 50),
        primary: color,
        elevation: 0.0,
        side: BorderSide(
          width: 2.0,
          color: Colors.black26,
        ),
      ),
    );
  }
}
