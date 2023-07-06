import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/models/FormUser.dart';

class FlutterFormsScreen2 extends StatelessWidget {
  final FormUser _user;

  const FlutterFormsScreen2(this._user, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Forms App"),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Hi ${_user.name}", style: const TextStyle(fontSize: 30.0),),
            const Text("Thanks for registering with us! 😊", style: TextStyle(fontSize: 20.0),),
          ],
        ),
      ),
    );
  }
}
