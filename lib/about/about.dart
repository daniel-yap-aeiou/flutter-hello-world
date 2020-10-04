import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  final String title;

  AboutScreen({Key key, @required this.title}) : super(key: key);

  @override
  AboutScreenState createState() {
    return new AboutScreenState();
  }
}

class AboutScreenState extends State<AboutScreen> {
  final GlobalKey<ScaffoldState> sScaffoldState =
      new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: sScaffoldState,
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Row(
        children: <Widget>[
          new Flexible(
            child: new Container(
              padding: new EdgeInsets.only(left: 10.0, right: 10.0),
              child: new Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                // overflow: TextOverflow.ellipsis,
                style: new TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
        (_) => sScaffoldState.currentState.showSnackBar(SnackBar(
              content: Text("Welcome to About Page!"),
              duration: const Duration(seconds: 3),
            )));
  }
}
