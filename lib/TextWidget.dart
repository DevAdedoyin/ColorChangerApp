import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String _color;

  TextWidget(this._color);

  @override
  Widget build(BuildContext context) {
    return Text(
      _color,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      textAlign: TextAlign.center,
    );
  }
}
