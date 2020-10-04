import 'package:flutter/material.dart';

class ContactsScreen extends StatefulWidget {
  final String title;

  ContactsScreen({Key key, @required this.title}) : super(key: key);

  @override
  ContactsScreenState createState() {
    return new ContactsScreenState();
  }
}

class ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new AppBar(
            title: new Text(widget.title),
            bottom: TabBar(
              tabs: <Widget>[
                new Container(
                  width: 100,
                  child: Tab(icon: Icon(Icons.directions_car)),
                ),
                new Container(
                  width: 100,
                  child: Tab(icon: Icon(Icons.directions_transit)),
                ),
                new Container(
                  width: 100,
                  child: Tab(icon: Icon(Icons.directions_bike)),
                ),
              ],
              isScrollable: true,
            ),
          ),
          body: TabBarView(
            children: [
              new ContactCarScreen(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ));
  }
}

class ContactCarScreen extends StatefulWidget {
  ContactCarScreen({Key key}) : super(key: key);

  @override
  ContactCarScreenState createState() {
    return new ContactCarScreenState();
  }
}

class ContactCarScreenState extends State<ContactCarScreen>
    with AutomaticKeepAliveClientMixin<ContactCarScreen> {
  @override
  bool get wantKeepAlive => true;

  Widget build(BuildContext context) {
    return new SingleChildScrollView(
      child: new Row(
        children: <Widget>[
          new Flexible(
            child: new Container(
              padding: new EdgeInsets.only(left: 10.0, right: 10.0),
              child: new Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum." +
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum." +
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: new TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
