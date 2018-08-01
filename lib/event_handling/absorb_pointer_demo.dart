import 'package:flutter/material.dart';

class AbsorbPointerDemo extends StatefulWidget {
  @override
  _AbsorbPointerDemo createState() {
    return _AbsorbPointerDemo();
  }
}

class _AbsorbPointerDemo extends State<AbsorbPointerDemo> {
  bool _absorb = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AbsorbPointerDemo')),
      body: Container(
        color: Colors.red,
        alignment: AlignmentDirectional.center,
        child: Column(
          children: <Widget>[
            Switch(
              value: _absorb,
              onChanged: (value) {
                setState(() => _absorb = value);
              },
            ),
            GestureDetector(
              onTap: () => print('tap in GestureDetector'),
              child: AbsorbPointer(
                absorbing: _absorb,
                child: RaisedButton(
                  onPressed: () => print('tap in RaisedButton'),
                  child: Text('absorb'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
