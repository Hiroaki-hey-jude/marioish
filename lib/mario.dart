import 'dart:math';

import 'package:flutter/material.dart';

class Mario extends StatelessWidget {
  final direction;

  const Mario({this.direction});

  @override
  Widget build(BuildContext context) {
    if (direction == "right" || direction == "up") {
      return SizedBox(
        width: 35,
        height: 35,
        child: Image.asset('assets/mario.png'),
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: SizedBox(
          width: 35,
          height: 35,
          child: Image.asset('assets/mario.png'),
        ),
      );
    }
    // return SizedBox(
    //   width: 35,
    //   height: 35,
    //   child: Image.asset('assets/mario.png'),
    // );
  }
}
