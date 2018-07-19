import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class BackdropFilterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ConstrainedBox(
              constraints: BoxConstraints.expand(), child: FlutterLogo()),
          BackdropFilter(
            filter: ui.ImageFilter.blur(sigmaX: 100.0, sigmaY: 10.0),
            child: Center(
              child: Text(
                'Frosted',
                style: Theme.of(context).textTheme.display3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
