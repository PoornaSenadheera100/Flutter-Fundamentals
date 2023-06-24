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
        theme: ThemeData(
          brightness: Brightness.light,
          // replace "dark" with "light" to apply dark theme
          primarySwatch: Colors.deepOrange,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Container"),
          ),
          body: Container(
            transform: Matrix4.rotationZ(0.3),
            color: Colors.indigo,
            width: double.infinity,
            height: 200.0,
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            margin: const EdgeInsets.all(20.0),
            child: const Text(
              "Hello World",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ));
  }
}
