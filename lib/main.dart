import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/screens/screen1.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _title = "Title 1";

  void _changeData(String newText){
    setState(() {
      _title = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(_title),
        ),
        body: Screen1(_title, _changeData),
      ),
    );
  }
}
