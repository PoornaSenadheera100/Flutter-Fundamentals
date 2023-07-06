import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/screens/success_screen.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  String name = '';
  String email = '';
  String address = '';
  String phone = '';
  String password = '';

  Widget nameFormField() {
    return TextFormField(
      validator: (text) {
        if (text!.isEmpty) {
          return "Name is required!";
        }
        return null;
      },
      onSaved: (text) {
        name = text!;
      },
      maxLength: 50,
      keyboardType: TextInputType.name,
      decoration: const InputDecoration(
        hintText: "Name",
        prefixIcon: Padding(
          padding: EdgeInsets.only(bottom: 6.0),
          child: Icon(Icons.contact_mail),
        ),
      ),
    );
  }

  Widget emailFormField() {
    return TextFormField(
      onSaved: (text){
        email = text!;
      },
      validator: (text) {
        if(text!.isEmpty){
          return "Email is required!";
        } else if (!text.contains("@")) {
          return "Email must have '@' symbol";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      maxLength: 50,
      decoration: const InputDecoration(
        hintText: "Email",
        prefixIcon: Padding(
          padding: EdgeInsets.only(bottom: 6.0),
          child: Icon(Icons.alternate_email),
        ),
      ),
    );
  }

  Widget addressFormField() {
    return TextFormField(
      onSaved: (text){
        address = text!;
      },
      validator: (text){
        if(text!.isEmpty){
          return "Address is required!";
        }
        return null;
      },
      keyboardType: TextInputType.text,
      maxLines: 3,
      maxLength: 100,
      decoration: const InputDecoration(
        hintText: "Address",
        prefixIcon: Padding(
          padding: EdgeInsets.only(bottom: 40.0),
          child: Icon(Icons.home),
        ),
      ),
    );
  }

  Widget phoneFormField() {
    return TextFormField(
      onSaved: (text){
        phone = text!;
      },
      validator: (text){
        if(text!.isEmpty){
          return "Phone number is required!";
        } else if(!text.startsWith("0")){
          return "Phone number should start with 0";
        } else if(text.length != 10){
          return "Phone number must have 10 digits!";
        }
        return null;
      },
      maxLength: 10,
      keyboardType: TextInputType.phone,
      decoration: const InputDecoration(
        hintText: "Phone",
        prefixIcon: Padding(
          padding: EdgeInsets.only(bottom: 6.0),
          child: Icon(Icons.phone),
        ),
      ),
    );
  }

  Widget passwordFormField() {
    return TextFormField(
      onSaved: (text){
        password = text!;
      },
      validator: (text){
        if(text!.isEmpty){
          return "Password is required!";
        } else if(text.length < 8){
          return "Password length should be greater than or equal to 8";
        }
        return null;
      },
      keyboardType: TextInputType.text,
      maxLength: 16,
      obscureText: true,
      decoration: const InputDecoration(
        hintText: "Password",
        prefixIcon: Padding(
          padding: EdgeInsets.only(bottom: 6.0),
          child: Icon(Icons.password),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form App"),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    const Icon(
                      Icons.people,
                      size: 200.0,
                    ),
                    nameFormField(),
                    emailFormField(),
                    addressFormField(),
                    phoneFormField(),
                    passwordFormField(),
                    ElevatedButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            _formkey.currentState!.save();
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SuccessScreen()));
                          }
                        },
                        child: const Text("Submit"))
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
