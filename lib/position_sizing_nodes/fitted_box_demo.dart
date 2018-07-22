import 'package:flutter/material.dart';

class FittedBoxDemo extends StatefulWidget {
  @override
  FittedBoxDemoState createState() {
    return FittedBoxDemoState();
  }
}

class FittedBoxDemoState extends State<FittedBoxDemo> {
  BoxFit _fit = BoxFit.cover;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FittedBoxDemo')),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  setState(() => _fit = BoxFit.fill);
                },
                child: Text('fill'),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() => _fit = BoxFit.contain);
                },
                child: Text('contain'),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() => _fit = BoxFit.cover);
                },
                child: Text('cover'),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() => _fit = BoxFit.fitWidth);
                },
                child: Text('fitWidth'),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  setState(() => _fit = BoxFit.fitHeight);
                },
                child: Text('fitHeight'),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() => _fit = BoxFit.none);
                },
                child: Text('none'),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() => _fit = BoxFit.scaleDown);
                },
                child: Text('scaleDown'),
              ),
            ],
          ),
          Center(
            child: Container(
              height: 200.0,
              width: 200.0,
              color: Colors.red,
              child: FittedBox(
                fit: _fit,
                child: Image.asset('assets/rabbit.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
