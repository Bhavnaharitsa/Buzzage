import 'package:flutter/material.dart';
import 'package:Buzzage/whatsapp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buzzage',

      theme: ThemeData(
        primaryColor: Colors.lime,
        accentColor: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: new Whatsapp(),
    );
  }
}







