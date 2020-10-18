import 'package:flutter/material.dart';

void main() => runApp(CheckColors());

class CheckColors extends StatefulWidget {
  @override
  _CheckColorsState createState() => _CheckColorsState();
}

class _CheckColorsState extends State<CheckColors> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ROYGBIV"),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            Center(
              child: Text(
                "Red",
                style: TextStyle(
                  backgroundColor: Colors.red,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: RaisedButton(
                onPressed: null,
                child: Text(
                  "Change Color",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
