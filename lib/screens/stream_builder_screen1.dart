import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/screens/stream_builder_screen2.dart';

class StreamBuilderScreen1 extends StatelessWidget {
  const StreamBuilderScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stream & StreamBuilder"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("Welcome to StreamBuilder App", style: TextStyle(fontSize: 25.0),),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>const StreamBuilderScreen2()));
            }, child: const Text("My Profile")),
          ],
        ),
      ),
    );
  }
}
