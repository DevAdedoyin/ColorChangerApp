import 'package:flutter/material.dart';
import 'package:splitting_into_widgets/TextControl.dart';
import 'package:splitting_into_widgets/TextWidget.dart';

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
              child: _colorIndex < color.length
                  ? TextWidget(color[_colorIndex])
                  : Center(child: Text("You did it fam")),
            ),
            Center(child: TextControl(checkState)),
          ],
        ),
      ),
    );
  }
}
