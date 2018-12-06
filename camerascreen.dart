import 'package:flutter/material.dart';
class camerascreen extends StatefulWidget {
  @override
  _camerascreenState createState() => _camerascreenState();
}

class _camerascreenState extends State<camerascreen> {
  @override
  Widget build(BuildContext context) {
    return new Center(
     child: new Text("Camera",
       style: new TextStyle(fontSize: 20.0),),
);
}
}