import 'package:flutter/material.dart';
import 'chatpage.dart';
class chatscreen extends StatefulWidget {
  @override
  _chatscreenState createState() => _chatscreenState();
}

class _chatscreenState extends State<chatscreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: dummydata.length,
    itemBuilder: (context,i)=>new Column(
      children: <Widget>[
        new Divider(
          height: 12.0,
        ),
        new ListTile(
          leading: new CircleAvatar(
            foregroundColor: Theme.of(context).primaryColor,
            backgroundColor: Colors.grey,
            backgroundImage: new NetworkImage(dummydata[i].picUrl),
          ),
          title: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Text(dummydata[i].name,style: new TextStyle(fontWeight:FontWeight.bold),),
              new Text(dummydata[i].time,style: new TextStyle(color: Colors.grey, fontSize: 13.0),),

            ],
          ),
          subtitle: new Container(
            padding: const EdgeInsets.only(top:5.0),
            child: new Text(dummydata[i].message,style: new TextStyle(color: Colors.grey,fontSize: 14.0),
        ),
          ),
        )
      ],
    ),
    );
  }
}
