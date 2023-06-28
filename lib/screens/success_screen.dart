import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Form App"),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Thanks for registering with us!", style: TextStyle(fontSize: 20.0),),
              Icon(Icons.tag_faces_sharp)
            ],
          ),
        ),
      );
  }
}
