import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/screens/future_builder_screen2.dart';

class FutureBuilderScreen1 extends StatelessWidget {
  const FutureBuilderScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Future Builder App"),
      ),
      body: Center(
        child: ElevatedButton(child: const Text("My Contacts"), onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>const FutureBuilderScreen2()));
        }),
      ),
    );
  }
}
