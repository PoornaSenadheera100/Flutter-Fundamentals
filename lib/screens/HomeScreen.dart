import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  HomeScreen(this.nameController, this.emailController, this.phoneController,
      this.passwordController,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: TextField(
            keyboardType: TextInputType.text,
            cursorColor: Colors.white,
            controller: searchController,
            style: const TextStyle(fontSize: 20.0, color: Colors.white),
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              border: InputBorder.none,
              hintText: "Search",
              hintStyle: const TextStyle(fontSize: 20.0, color: Colors.white),
              suffix: IconButton(
                icon: const Icon(Icons.cancel_outlined),
                onPressed: () {
                  searchController.text = '';
                },
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                const Text(
                  "Name :",
                  style: TextStyle(fontSize: 20.0),
                ),
                Flexible(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    controller: nameController,
                    enabled: false,
                  ),
                ))
              ],
            ),
            Row(
              children: [
                const Text(
                  "Email  :",
                  style: TextStyle(fontSize: 20.0),
                ),
                Flexible(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    controller: emailController,
                    enabled: false,
                  ),
                ))
              ],
            ),
            Row(
              children: [
                const Text(
                  "Phone :",
                  style: TextStyle(fontSize: 20.0),
                ),
                Flexible(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    controller: phoneController,
                    enabled: false,
                  ),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
