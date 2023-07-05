import 'package:flutter/material.dart';

class FlutterFormsScreen extends StatefulWidget {
  const FlutterFormsScreen({super.key});

  @override
  State<FlutterFormsScreen> createState() => _FlutterFormsScreenState();
}

class _FlutterFormsScreenState extends State<FlutterFormsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Forms App"),
      ),
      body: Form(
        child: Column(
          children: [
            Icon(Icons.person),
            TextFormField(
              decoration: InputDecoration(hintText: "Name"),
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "Email"),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Please enter an email.", border: InputBorder.none),
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "Address"),
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "Phone"),
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "Password"),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Submit")),
          ],
        ),
      ),
    );
  }
}
