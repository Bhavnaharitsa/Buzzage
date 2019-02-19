import 'package:flutter/material.dart';
class statusscreen extends StatefulWidget {
  @override
  _statusscreenState createState() => _statusscreenState();
}

class _statusscreenState extends State<statusscreen> {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text("Status",
        style: new TextStyle(fontSize: 20.0),),
    );
  }
}

