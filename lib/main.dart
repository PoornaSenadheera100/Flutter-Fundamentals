import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View App"),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            ListTile(
              title: Text("Title 1"),
              subtitle: Text("Subtitle 1"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.menu),
            ),
            ListTile(
              title: Text("Title 1"),
              subtitle: Text("Subtitle 1"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.menu),
            ),
            ListTile(
              title: Text("Title 1"),
              subtitle: Text("Subtitle 1"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.menu),
            ),
            ListTile(
              title: Text("Title 1"),
              subtitle: Text("Subtitle 1"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.menu),
            ),
            ListTile(
              title: Text("Title 1"),
              subtitle: Text("Subtitle 1"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.menu),
            ),
            ListTile(
              title: Text("Title 1"),
              subtitle: Text("Subtitle 1"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.menu),
            ),
            ListTile(
              title: Text("Title 1"),
              subtitle: Text("Subtitle 1"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.menu),
            ),
            ListTile(
              title: Text("Title 1"),
              subtitle: Text("Subtitle 1"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.menu),
            ),
            ListTile(
              title: Text("Title 1"),
              subtitle: Text("Subtitle 1"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.menu),
            ),
            ListTile(
              title: Text("Title 1"),
              subtitle: Text("Subtitle 1"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.menu),
            ),
            ListTile(
              title: Text("Title 1"),
              subtitle: Text("Subtitle 1"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.menu),
            ),
            ListTile(
              title: Text("Title 1"),
              subtitle: Text("Subtitle 1"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.menu),
            ),
          ],
        ),
      ),
    );
  }
}
