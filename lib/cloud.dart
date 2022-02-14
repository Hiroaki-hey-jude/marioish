import 'package:flutter/material.dart';

class Cloud extends StatelessWidget {
  double x = 0;
  Cloud({Key? key, required this.x}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(x, -1),
      child: SizedBox(
        child: Image.asset('assets/cloud.png'),
        width: 80,
        height: 80,
      ),
    );
  }
}
