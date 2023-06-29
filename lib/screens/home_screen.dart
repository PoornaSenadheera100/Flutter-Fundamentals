import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void navigation(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>SecondScreen()));
  }

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
            Text("Welcome to Async App", style: TextStyle(fontSize: 20.0),),
            ElevatedButton(onPressed: (){
              navigation(context);
            }, child: Text("My Profile"))
          ],
        ),
      ),
    );
  }
}
