import 'dart:math';

import 'package:flutter/material.dart';

class Mario extends StatelessWidget {
  final direction;

  Mario({this.direction});

  @override
  Widget build(BuildContext context) {
    if (direction == "right") {
      return SizedBox(
        width: 35,
        height: 35,
        child: Image.asset('assets/mario.png'),
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          width: 35,
          height: 35,
          child: Image.asset('assets/mario.png'),
        ),
      );
    }
  }
}
