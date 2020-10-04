import 'package:flutter/material.dart';

import './contacts/contacts.dart';
import './settings/settings.dart';
import './about/about.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(),
      //initialRoute: '/',
      routes: {
        // When we navigate to the "/" route, build the FirstScreen Widget
        //'/': (context) => HomeScreen(title: "Home"),
        '/contacts': (context) => ContactsScreen(title: "Contacts"),
        '/settings': (context) => SettingsScreen(title: "Settings"),
        '/about': (context) => AboutScreen(title: "About"),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('TestProject'),
      ),
      drawer: new Drawer(
          child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text(
              "Daniel Yap",
              style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
            ),
            accountEmail: new Text(
              "danielytf@gmail.com",
              style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
            ),
            currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.orange, child: new Text("DY")),
          ),
          // new DrawerHeader(
          //   child: new Text('Header'),
          //   margin: EdgeInsets.all(10),
          //   padding: EdgeInsets.all(10),
          // ),
          new ListTile(
            leading: Icon(Icons.contacts),
            title: new Text('Contacts'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/contacts');
            },
          ),
          new ListTile(
            leading: Icon(Icons.settings),
            title: new Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/settings');
            },
          ),
          new Divider(),
          new ListTile(
            leading: Icon(Icons.info),
            title: new Text('About'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/about');
            },
          ),
          new AboutListTile(
            applicationIcon: Icon(Icons.music_video),
            applicationName: "Demo App",
            applicationVersion: "1.2",
          ),
        ],
      )),
      body: new Center(
        child: new Text(
          'Center',
        ),
      ),
    );
  }
}
