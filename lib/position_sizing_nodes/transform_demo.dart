import 'package:flutter/material.dart';

class TransformDemo extends StatefulWidget {
  @override
  TransformDemoState createState() {
    return TransformDemoState();
  }
}

class TransformDemoState extends State<TransformDemo> {
  double _angle = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('TransformDemo')),
        body: Column(
          children: <Widget>[
            Slider(
              value: _angle,
              onChanged: (value) => setState(() => _angle = value),
            ),
            Transform.rotate(
              alignment: AlignmentDirectional.center,
              angle: _angle,
              child: Center(
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
