import 'package:flutter/material.dart';

class RotatedBoxDemo extends StatefulWidget {
  @override
  RotatedBoxDemoState createState() {
    return new RotatedBoxDemoState();
  }
}

class RotatedBoxDemoState extends State<RotatedBoxDemo> {
  int turns = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RotatedBoxDemo')),
      body: GestureDetector(
        onTap: () {
          setState(() => ++turns);
        },
        child: RotatedBox(
          quarterTurns: turns,
          child: Center(
            child: Image.asset('assets/rabbit.png'),
          ),
        ),
      ),
    );
  }
}
