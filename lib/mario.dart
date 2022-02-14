import 'dart:math';

import 'package:flutter/material.dart';

class Mario extends StatelessWidget {
  final direction;
  final run;

  const Mario({this.direction, this.run});

  @override
  Widget build(BuildContext context) {
    if (direction == "right") {
      return SizedBox(
        width: 35,
        height: 35,
        child: run
            ? Image.asset('assets/mariowalk.PNG')
            : Image.asset('assets/mario.png'),
      );
    } else {
      print(direction);
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: SizedBox(
          width: 35,
          height: 35,
          child: run
              ? Image.asset('assets/mariowalk.PNG')
              : Image.asset('assets/mario.png'),
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
