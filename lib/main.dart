import 'package:basic/painting_nodes/clip_oval_demo.dart';
import 'package:basic/painting_nodes/clip_path_demo.dart';
import 'package:basic/painting_nodes/clip_rect_demo.dart';
import 'package:basic/painting_nodes/clip_rrect_demo.dart';
import 'package:basic/painting_nodes/opacity_demo.dart';
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SectionTitle(),
            Entry(title: 'Opacity', route: OpacityDemo()),
            Entry(title: 'ClipRect', route: ClipRectDemo()),
            Entry(title: 'ClipRRect', route: ClipRRectDemo()),
            Entry(title: 'ClipOval', route: ClipOvalDemo()),
            Entry(title: 'ClipPath', route: ClipPathDemo()),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SPACE_BIG,
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            'PAINTING NODES',
            style: Theme.of(context).textTheme.headline,
          ),
        ),
      ],
    );
  }
}

const SPACE_SMALL = SizedBox(height: 8.0);
const SPACE_BIG = SizedBox(height: 16.0);

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        RaisedButton(
          onPressed: () => navigate(context, route),
          child: Text(title),
        ),
        SPACE_SMALL,
      ],
    );
  }
}
