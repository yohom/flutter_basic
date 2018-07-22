import 'package:flutter/material.dart';

class AlignDemo extends StatefulWidget {
  @override
  AlignDemoState createState() {
    return new AlignDemoState();
  }
}

class AlignDemoState extends State<AlignDemo> {
  AlignmentDirectional _directional = AlignmentDirectional.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AlignDemo')),
      body: Column(
        children: <Widget>[
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            childAspectRatio: 3.0,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _directional = AlignmentDirectional.topStart;
                  });
                },
                child: Text('topStart'),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _directional = AlignmentDirectional.topCenter;
                  });
                },
                child: Text('topCenter'),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _directional = AlignmentDirectional.topEnd;
                  });
                },
                child: Text('topEnd'),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _directional = AlignmentDirectional.centerStart;
                  });
                },
                child: Text('centerStart'),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _directional = AlignmentDirectional.center;
                  });
                },
                child: Text('center'),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _directional = AlignmentDirectional.centerEnd;
                  });
                },
                child: Text('centerEnd'),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _directional = AlignmentDirectional.bottomStart;
                  });
                },
                child: Text('bottomStart'),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _directional = AlignmentDirectional.bottomCenter;
                  });
                },
                child: Text('bottomCenter'),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _directional = AlignmentDirectional.bottomEnd;
                  });
                },
                child: Text('bottomEnd'),
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: Align(
                alignment: _directional,
                child: Text(
                  'i am text',
                  style: Theme.of(context).textTheme.headline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
