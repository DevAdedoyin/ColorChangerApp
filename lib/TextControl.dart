import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function _checkState;

  TextControl(this._checkState);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: _checkState,
      child: Text(
        "Change Color",
        style: TextStyle(color: Colors.white),
      ),
      color: Colors.blue,
    );
  }
}
