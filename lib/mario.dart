import 'package:flutter/material.dart';

class Mario extends StatelessWidget {
  const Mario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 35,
      height: 35,
      child: Image.asset('assets/mario.png'),
    );
  }
}
