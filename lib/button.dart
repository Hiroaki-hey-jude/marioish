import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final icon;
  final function;

  const Button({this.icon, this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
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
