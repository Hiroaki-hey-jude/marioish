import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final icon;
  final function;

  static bool holdingButton = false;

  bool userIsHoldingButton() {
    return holdingButton;
  }

  const Button({this.icon, this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        holdingButton = true;
        function();
      },
      onTapUp: (details) {
        holdingButton = false;
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 50,
          height: 50,
          color: Colors.amber,
          child: Center(
            child: Icon(icon),
          ),
        ),
      ),
    );
  }
}
