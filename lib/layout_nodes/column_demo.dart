import 'package:flutter/material.dart';

class ColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ColumnDemo')),
      body: Column(
        children: <Widget>[
          Text('测试1'),
          Text('测试2'),
          Text('测试3'),
          Text('测试4'),
          Text('test2'),
          Text('test3'),
          Text('test4'),
          Text('test5'),
          Text('test6'),
        ],
      ),
    );
  }
}
