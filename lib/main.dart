import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/screens/HomePage.dart';
import 'package:flutter_fundamentals/screens/SecondScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Navigation App",
      home: const HomePage(),
      routes: <String, WidgetBuilder>{
        "/second": (context) => const SecondScreen(),
      },
    );
  }
}
