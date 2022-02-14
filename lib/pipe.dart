import 'package:flutter/material.dart';

class Pipe extends StatelessWidget {
  double x = 0;
  double y = 0;
  double height = 0;

  Pipe({required this.x, required this.y, required this.height});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(x, y),
      child: SizedBox(
        width: 50,
        height: height,
        child: Image.asset('assets/pipe2.png'),
      ),
    );
  }
}
