import 'package:flutter/material.dart';
import 'package:flutter_app/callsscreen.dart';
import 'package:flutter_app/camerascreen.dart';
import 'package:flutter_app/chatscreen.dart';
import 'package:flutter_app/statusscreen.dart';

class whatspp extends StatefulWidget {
  @override
  _whatsppState createState() => _whatsppState();
}

class _whatsppState extends State<whatspp> with SingleTickerProviderStateMixin {
  TabController tab;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tab= new TabController(length: 4, vsync: this, initialIndex: 1);
  }
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Buzzage"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: tab,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt),),
            // ignore: expected_token
            new Tab(text: " Ping",),
            new Tab(text:"Ring", ),
            new Tab(text:"Status",),
          ]
          ,
        ),
        actions: <Widget>[
          new Icon(Icons.search), new Padding(padding: const EdgeInsets.symmetric(horizontal: 7.0)),new Icon(Icons.more_vert)
        ],
      ),
      body: new TabBarView(
        controller: tab,
        children: <Widget>[
          new camerascreen(),
          new chatscreen(),
          new callsscreen(),
          new statusscreen(),

        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(Icons.message),
        onPressed: ()=> print("open chats"),
      ),
    );
  }
}
