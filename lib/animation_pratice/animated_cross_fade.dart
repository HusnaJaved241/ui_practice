import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeWidget> createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool _crossFadeStateShowFirst = true;
  void _crossFade() {
    setState(() {
      _crossFadeStateShowFirst = _crossFadeStateShowFirst ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            AnimatedCrossFade(
              firstChild: Container(
                color: Colors.brown,
                height: 100.0,
                width: 120.0,
                child: Text(
                  'Container chota ho gya',
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                  textAlign: TextAlign.center,
                ),
              ),
              secondChild: Container(
                height: 200.0,
                width: 200.0,
                color: Colors.cyanAccent,
                child: Text(
                  'Container bara ho gya',
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                  textAlign: TextAlign.center,
                ),
              ),
              sizeCurve: Curves.elasticInOut,
              crossFadeState: _crossFadeStateShowFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: Duration(milliseconds: 500),
            ),
            Positioned(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.transparent),
                child: Text('Press'),
                onPressed: () {
                  _crossFade();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
