import 'package:flutter/material.dart';

void main() => runApp(CheckColors());

class CheckColors extends StatefulWidget {
  @override
  _CheckColorsState createState() => _CheckColorsState();
}

class _CheckColorsState extends State<CheckColors> {
  var _colorIndex = 0;

  void checkState() {
    setState(() {
      _colorIndex += 1;
    });
  }

  final color = const [
    "Red",
    "White",
    "Blue",
  ];

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
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: Text(
                color[_colorIndex],
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: RaisedButton(
                onPressed: checkState,
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
