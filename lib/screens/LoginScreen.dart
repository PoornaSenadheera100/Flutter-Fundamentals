// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});

  bool proceed() {
    if (nameController.text == '' ||
        emailController.text == '' ||
        phoneController.text == '' ||
        passwordController.text == '') {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.people,
                size: 200.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: TextField(
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                      hintText: "Name",
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(bottom: 6.0),
                        child: Icon(
                          Icons.contact_mail,
                          color: Colors.black,
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      hintText: "Email",
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(bottom: 6.0),
                        child: Icon(
                          Icons.alternate_email,
                          color: Colors.black,
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      hintText: "Phone",
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(bottom: 6.0),
                        child: Icon(
                          Icons.phone,
                          color: Colors.black,
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: TextField(
                  controller: passwordController,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Password",
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(bottom: 6.0),
                        child: Icon(
                          Icons.password,
                          color: Colors.black,
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: TextButton(
                  onPressed: () {
                    if (proceed()) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeScreen(nameController, emailController, phoneController, passwordController)));
                    } else {
                      // Error Handling
                    }
                  },
                  child: const Text(
                    "Signup",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
