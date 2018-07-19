import 'package:flutter/material.dart';

class ClipRRectDemo extends StatefulWidget {
  @override
  _ClipRRectDemoState createState() {
    return _ClipRRectDemoState();
  }
}

class _ClipRRectDemoState extends State<ClipRRectDemo> {
  double _cornerRadius = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ClipRRectDemo')),
      body: Column(
        children: <Widget>[
          Slider(
            value: _cornerRadius,
            onChanged: (value) => setState(() => _cornerRadius = value),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(_cornerRadius * 180),
            child: Container(
              height: 400.0,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
