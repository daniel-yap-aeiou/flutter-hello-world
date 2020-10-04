import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  final String title;

  SettingsScreen({Key key, @required this.title}) : super(key: key);

  @override
  SettingsScreenState createState() {
    return new SettingsScreenState();
  }
}

class SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Text(
          widget.title,
        ),
      ),
    );

    // return new Center(
    //     child: new Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: <Widget>[
    //     // new Icon(
    //     //   widget.drawerItem.icon,
    //     //   size: 54.0,
    //     // ),
    //     new Text(
    //       widget.title,
    //       style: new TextStyle(fontSize: 48.0, fontWeight: FontWeight.w300),
    //     ),
    //   ],
    // ));
  }
}
