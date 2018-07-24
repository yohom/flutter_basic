import 'package:flutter/material.dart';

class ConstrainedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ConstrainedBoxDemo')),
      body: Column(
        children: <Widget>[
          Flexible(
            child: Container(
              color: Colors.blueAccent,
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: 100.0, maxHeight: 200.0),
            child: Container(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
