import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome to Flutter'),
          ),
          body: Center(
            child: TapboxA(),
          )),
    );
  }

  // ···
}

class TapboxA extends StatefulWidget {
  @override
  _TapboxAState createState() => _TapboxAState();
}

class _TapboxAState extends State<TapboxA> {
  @override
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _handleTap,
        child: Row(children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(25),
            child: Text(
              'Active',
              style: TextStyle(fontSize: 32.0, color: Colors.white),
            ),
            width: 150.0,
            height: 150.0,
            decoration: BoxDecoration(
              color: Colors.lightGreen[700],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'INActive',
              style: TextStyle(fontSize: 32.0, color: Colors.white),
            ),
            width: 150.0,
            height: 150.0,
            decoration: BoxDecoration(
              color: Colors.grey[600],
            ),
          ),
        ]));
  }
}
