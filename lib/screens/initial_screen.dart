import 'package:flutter/material.dart';

import 'contacts_screen.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Future Builder"),
        ),
        body: Center(
          child: ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>const ContactsScreen()));
          }, child: const Text("My Contacts")),
        ),
      );
  }
}
