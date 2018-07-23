import 'package:basic/painting_nodes/backdrop_filter_demo.dart';
import 'package:basic/painting_nodes/clip_oval_demo.dart';
import 'package:basic/painting_nodes/clip_path_demo.dart';
import 'package:basic/painting_nodes/clip_rect_demo.dart';
import 'package:basic/painting_nodes/clip_rrect_demo.dart';
import 'package:basic/painting_nodes/opacity_demo.dart';
import 'package:basic/painting_nodes/physical_model_demo.dart';
import 'package:basic/painting_nodes/shader_mask_demo.dart';
import 'package:basic/position_sizing_nodes/align_demo.dart';
import 'package:basic/position_sizing_nodes/center_demo.dart';
import 'package:basic/position_sizing_nodes/fitted_box_demo.dart';
import 'package:basic/position_sizing_nodes/fractional_translation_demo.dart';
import 'package:basic/position_sizing_nodes/padding_demo.dart';
import 'package:basic/position_sizing_nodes/rotated_box_demo.dart';
import 'package:basic/position_sizing_nodes/transform_demo.dart';
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
        child: ListView(
          children: <Widget>[
            SectionTitle(title: 'PAINTING NODES'),
            Entry(title: 'Opacity', route: OpacityDemo()),
            Entry(title: 'ShaderMask', route: ShaderMaskDemo()),
            Entry(title: 'BackdropFilter', route: BackdropFilterDemo()),
            Entry(title: 'ClipRect', route: ClipRectDemo()),
            Entry(title: 'ClipRRect', route: ClipRRectDemo()),
            Entry(title: 'ClipOval', route: ClipOvalDemo()),
            Entry(title: 'ClipPath', route: ClipPathDemo()),
            Entry(title: 'PhysicalModel', route: PhysicalModelDemo()),
            SectionTitle(title: 'POSITIONING AND SIZING NODES'),
            Entry(title: 'Transform', route: TransformDemo()),
            Entry(title: 'FittedBox', route: FittedBoxDemo()),
            Entry(
              title: 'FractionalTranslation',
              route: FractionalTranslationDemo(),
            ),
            Entry(title: 'RotatedBox', route: RotatedBoxDemo()),
            Entry(title: 'Padding', route: PaddingDemo()),
            Entry(title: 'Align', route: AlignDemo()),
            Entry(title: 'Center', route: CenterDemo()),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SPACE_BIG,
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            title,
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
