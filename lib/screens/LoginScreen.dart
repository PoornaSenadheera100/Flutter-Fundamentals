import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              Icon(
                Icons.people,
                size: 200.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      hintText: "Name",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
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
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
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
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: "Phone",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
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
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
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
                  onPressed: () {},
                  child: Text(
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
