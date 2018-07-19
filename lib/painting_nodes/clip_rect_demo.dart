import 'package:flutter/material.dart';

class ClipRectDemo extends StatefulWidget {
  @override
  _ClipRectDemoState createState() {
    return _ClipRectDemoState();
  }
}

class _ClipRectDemoState extends State<ClipRectDemo> {
  double _heightFactor = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ClipRectDemo')),
      body: Column(
        children: <Widget>[
          Slider(
            value: _heightFactor,
            onChanged: (value) => setState(() => _heightFactor = value),
          ),
          ClipRect(
            // Align设置了heightFactor, 那么Align的高度为Container的0.5倍
            // ClipRect之后, Container的下半部分就被剪掉了
            child: Align(
              alignment: AlignmentDirectional.topCenter,
              heightFactor: _heightFactor,
              // Container的大小为整个body
              child: Container(
                height: 400.0,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
