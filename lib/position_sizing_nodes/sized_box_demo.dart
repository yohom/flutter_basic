import 'package:flutter/material.dart';

class SizedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SizedBoxDemo')),
      body: Center(
        child: SizedBox(
          width: 200.0,
          height: 200.0,
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
