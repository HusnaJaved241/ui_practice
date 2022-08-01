import 'package:flutter/material.dart';

import '../animation_pratice/animated_container.dart';
import '../animation_pratice/animated_cross_fade.dart';

class DisplayPage extends StatefulWidget {
  const DisplayPage({Key? key}) : super(key: key);

  @override
  State<DisplayPage> createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AnimatedContainerWidget(),
            Divider(),
            AnimatedCrossFadeWidget(),
          ],
        ),
      ),
    );
  }
}
