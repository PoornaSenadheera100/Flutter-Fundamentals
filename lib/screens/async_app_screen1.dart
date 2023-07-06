import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/screens/async_app_screen2.dart';

class AsyncAppScreen1 extends StatelessWidget {
  const AsyncAppScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asynchronous App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Welcome to Async App"),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>AsyncAppScreen2()));
            }, child: Text("My Profile")),
          ],
        ),
      ),
    );
  }
}
