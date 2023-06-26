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
          title: const Text("List View App"),
        ),
        body: SizedBox(
          height: 100.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.deepOrange,
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.blue,
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.deepOrange,
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.blue,
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.deepOrange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
