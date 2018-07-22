import 'package:flutter/material.dart';

///
/// PhysicalModel和PhysicalShape类似, 只不过后者可以自定义path, 前者只能画圆角矩形
///
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
