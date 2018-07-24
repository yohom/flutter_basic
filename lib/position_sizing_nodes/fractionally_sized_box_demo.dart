import 'package:flutter/material.dart';

class FractionallySizedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FractionallySizedBoxDemo')),
      body: Container(
        color: Colors.blueAccent,
        constraints: BoxConstraints.expand(),
        child: Column(
          children: <Widget>[
            FractionallySizedBox(
              widthFactor: 0.5,
              child: RaisedButton(
                onPressed: () {},
                child: Text('child1'),
              ),
            ),
            SizedBox(height: 8.0),
            FractionallySizedBox(
              widthFactor: 0.8,
              child: RaisedButton(
                onPressed: () {},
                child: Text('child2'),
              ),
            ),
            SizedBox(height: 8.0),
            FractionallySizedBox(
              widthFactor: 0.6,
              child: RaisedButton(
                onPressed: () {},
                child: Text('child2'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
