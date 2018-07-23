import 'package:flutter/material.dart';

///
/// [SingleChildLayoutDelegate]没有对外开放的已实现的实现类, flutter内建的实现类(但是是private的)
/// 的有(包括但不限于): _ToolbarContainerLayout(这个appbar内部使用的)
/// 也就是说要用[CustomSingleChildLayout]的话, 就需要自己去实现[SingleChildLayoutDelegate]
/// 这里暂时就不去搞了
///
class CustomSingleChildLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CustomSingleChildLayoutDemo')),
      body: Center(
        child: Text(
          '''[SingleChildLayoutDelegate]没有对外开放的已实现的实现类, flutter内建的实现类(但是是private的)的有(包括但不限于): _ToolbarContainerLayout(这个appbar内部使用的)也就是说要用[CustomSingleChildLayout]的话, 就需要自己去实现[SingleChildLayoutDelegate]这里暂时就不去搞了''',
        ),
      ),
    );
  }
}
