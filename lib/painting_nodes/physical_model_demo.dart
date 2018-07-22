import 'package:flutter/material.dart';

class PhysicalModelDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PhysicalModelDemo')),
      body: PhysicalModel(
        color: Colors.red,
        shape: BoxShape.circle,
        shadowColor: Colors.blueAccent,
        elevation: 20.0,
        child: Container(),
      ),
    );
  }
}
