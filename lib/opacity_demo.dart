import 'package:flutter/material.dart';

class OpacityDemo extends StatefulWidget {
  @override
  _OpacityDemoState createState() {
    return _OpacityDemoState();
  }
}

class _OpacityDemoState extends State<OpacityDemo> {
  double _opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OpacityDemo')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Slider(
            value: _opacity,
            onChanged: (value) => setState(() => _opacity = value),
          ),
          Opacity(
            opacity: _opacity,
            child: Container(
              width: 200.0,
              height: 200.0,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
