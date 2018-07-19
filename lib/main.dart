import 'package:basic/opacity_demo.dart';
import 'package:basic/router.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic.dart Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('basic.dart')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Entry(title: 'Opacity', route: OpacityDemo()),
          ],
        ),
      ),
    );
  }
}

class Entry extends StatelessWidget {
  final String title;
  final Widget route;

  const Entry({
    Key key,
    @required this.title,
    @required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => navigate(context, route),
      child: Text(title),
    );
  }
}
