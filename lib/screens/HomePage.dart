// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/screens/SecondScreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation App"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Welcome to Navigation App", style: TextStyle(fontSize: 20.0),),
            Text("Tap the button below to navigate to the next screen."),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondScreen("This is the gift from HomePage")));
        },
        child: const Icon(Icons.arrow_right_outlined),
      ),
    );
  }
}
