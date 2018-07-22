import 'package:flutter/material.dart';

class FractionalTranslationDemo extends StatefulWidget {
  @override
  FractionalTranslationDemoState createState() {
    return FractionalTranslationDemoState();
  }
}

class FractionalTranslationDemoState extends State<FractionalTranslationDemo> {
  double _offset = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FractionalTranslationDemo')),
      body: Column(
        children: <Widget>[
          Slider(
            value: _offset,
            onChanged: (value) => setState(() => _offset = value),
          ),
          Container(
            color: Colors.blueAccent,
            child: GestureDetector(
              onTap: () => print('tapped!!!!'),
              child: FractionalTranslation(
                transformHitTests: true,
                translation: Offset(_offset, _offset),
                child: Container(
                  height: 200.0,
                  width: 200.0,
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
