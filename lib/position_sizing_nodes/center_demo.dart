import 'package:flutter/material.dart';

class CenterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CenterDemo')),
      body: Center(
        child: Text('i am in center'),
      ),
    );
  }
}
