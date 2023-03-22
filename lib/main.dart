import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/message.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_application_1/pages/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Drawer Exm', initialRoute: '/', routes: {
      '/': (context) => MyHomePage(),
      '/message': (context) => MessagePage(),
      '/profile': (context) => ProfilePage(),
      '/settings': (context) => SettingsPage(),
    });
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.green),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Flutter Widgets and Layouts'),
              backgroundColor: Colors.green,
            ),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Welcome to my flutter app!',
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    print('Button clicked');
                  },
                  child: Text('Click me!'),
                )
              ],
            )),
            drawer: Drawer(
              child: ListView(padding: EdgeInsets.all(16.0), children: <Widget>[
                DrawerHeader(
                    child: Text(
                  'DrawerHead',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 24,
                  ),
                )),
                ListTile(
                    leading: Icon(Icons.message),
                    title: Text('Message'),
                    onTap: () {
                      Navigator.pushNamed(context, '/message');
                    }),
                ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Profile'),
                    onTap: () {
                      Navigator.pushNamed(context, '/profile');
                    }),
                ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                    onTap: () {
                      Navigator.pushNamed(context, '/settings');
                    })
              ]),
            )));
  }
}
