import 'package:flutter/material.dart';
import 'package:practice/UI/dashboard_1.dart';
import 'package:practice/UI/dashboard_2.dart';
import 'package:practice/UI/dashboard_3.dart';
import 'package:practice/UI/ecommerce_1.dart';
import 'package:practice/UI/ecommerce_2.dart';
import 'package:practice/UI/ecommerce_3.dart';
import 'package:practice/UI/ecommerce_4.dart';
import 'package:practice/UI/ecommerce_5.dart';
import 'package:practice/UI/ecommerce_6.dart';
import 'package:practice/UI/ecommerce_7.dart';
import 'package:practice/UI/ecommerce_8.dart';

import 'package:practice/UI/settings_1.dart';
import 'package:practice/UI/settings_2.dart';
import 'package:practice/UI/settings_3.dart';
import 'package:practice/UI/settings_4.dart';
import 'package:practice/pages/display_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.blueGrey,
          ),
      home: SettingsUI3(),
    );
  }
}
