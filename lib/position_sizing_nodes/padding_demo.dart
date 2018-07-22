import 'package:flutter/material.dart';

class PaddingDemo extends StatefulWidget {
  @override
  PaddingDemoState createState() {
    return new PaddingDemoState();
  }
}

class PaddingDemoState extends State<PaddingDemo> {
  double _insets = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PaddingDemo')),
      body: Column(
        children: <Widget>[
          Slider(
            value: _insets,
            onChanged: (value) => setState(() => _insets = value),
          ),
          Container(
            color: Colors.blueAccent,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(_insets * 50.0),
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
