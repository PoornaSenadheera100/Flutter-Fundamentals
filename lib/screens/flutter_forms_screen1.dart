import 'package:flutter/material.dart';

class FlutterFormsScreen extends StatefulWidget {
  const FlutterFormsScreen({super.key});

  @override
  State<FlutterFormsScreen> createState() => _FlutterFormsScreenState();
}

class _FlutterFormsScreenState extends State<FlutterFormsScreen> {
  String _name = '';
  String _address = '';
  String _phone = '';
  String _password = '';

  GlobalKey _formKey = GlobalKey();
  TextEditingController _emailController = TextEditingController();

  String? _validateName(String text){
    if(text == ''){
      return "Name is required!";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Forms App"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Icon(Icons.person),
            TextFormField(
              validator: (text){
                return _validateName(text!);
              },
              decoration: InputDecoration(hintText: "Name"),
            ),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(hintText: "Email"),
            ),
            TextField(
              enabled: false,
              controller: _emailController,
              decoration: InputDecoration(
                prefixText: "Your username will be ",
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
            ElevatedButton(onPressed: () {

            }, child: Text("Submit")),
          ],
        ),
      ),
    );
  }
}
