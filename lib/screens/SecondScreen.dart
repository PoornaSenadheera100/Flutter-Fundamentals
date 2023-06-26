import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/screens/HomePage.dart';

// ignore: must_be_immutable
class SecondScreen extends StatelessWidget {
  String gift;

  SecondScreen(this.gift, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            Navigator.of(context).pop(const HomePage());
          },
        ),
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: Text(gift),
      ),
    );
  }
}
