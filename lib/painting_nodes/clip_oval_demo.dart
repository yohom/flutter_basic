import 'package:flutter/material.dart';

class ClipOvalDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ClipOvalDemo')),
      body: ClipOval(
        child: Container(
          height: 400.0,
          color: Colors.red,
        ),
      ),
    );
  }
}
