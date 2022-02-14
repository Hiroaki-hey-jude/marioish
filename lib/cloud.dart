import 'dart:math';

import 'package:flutter/material.dart';

class Cloud extends StatelessWidget {
  Cloud({Key? key}) : super(key: key);
  final random = Random();
  double get randomValue => (random.nextDouble() * 2) - 1;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(randomValue, -1),
      child: SizedBox(
        child: Image.asset('assets/cloud.png'),
        width: 80,
        height: 80,
      ),
    );
  }
}
