import 'package:flutter/material.dart';

class IgnorePointerDemo extends StatefulWidget {
  @override
  _IgnorePointerDemoState createState() {
    return _IgnorePointerDemoState();
  }
}

class _IgnorePointerDemoState extends State<IgnorePointerDemo> {
  bool _ignore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('IgnorePointerDemo')),
      body: Container(
        color: Colors.red,
        alignment: AlignmentDirectional.center,
        child: Column(
          children: <Widget>[
            Switch(
              value: _ignore,
              onChanged: (value) {
                setState(() => _ignore = value);
              },
            ),
            IgnorePointer(
              ignoring: _ignore,
              child: RaisedButton(
                onPressed: () => print('clicked!!'),
                child: Text('ignore'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
