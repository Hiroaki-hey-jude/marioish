import 'dart:math';

import 'package:flutter/material.dart';

class JumpingMario extends StatelessWidget {
  final direction;

  JumpingMario({this.direction});

  @override
  Widget build(BuildContext context) {
    if(direction == "right"){
      return SizedBox(
      width: 35,
      height: 35,
      child: Image.asset('assets/IMG_7304.PNG'),
      );
    }else{
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: SizedBox(
        width: 35,
        height: 35,
        child: Image.asset('assets/IMG_7304.PNG'),
        ),
      );
    }
  }
}
