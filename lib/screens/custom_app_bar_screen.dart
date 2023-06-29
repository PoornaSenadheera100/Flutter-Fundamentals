import 'package:flutter/material.dart';

class CustomAppBarScreen extends StatelessWidget {
  const CustomAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.pink),
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop(const CustomAppBarScreen());
        }, icon: const Icon(Icons.arrow_back_sharp),),
        title: const Text(
          "Custom App Bar",
          style: TextStyle(color: Colors.pink),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
        flexibleSpace: Image.asset(
          "assets/app_bar_background.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
