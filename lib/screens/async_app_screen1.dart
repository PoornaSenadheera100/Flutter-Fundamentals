import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/screens/async_app_screen2.dart';

class AsyncAppScreen1 extends StatelessWidget {
  const AsyncAppScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Asynchronous App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("Welcome to Async App", style: TextStyle(fontSize: 30.0),),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>const AsyncAppScreen2()));
            }, child: const Text("My Profile")),
          ],
        ),
      ),
    );
  }
}
