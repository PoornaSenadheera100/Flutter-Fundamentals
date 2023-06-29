import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.pink),
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop(CustomAppBar());
        }, icon: Icon(Icons.arrow_back_sharp),),
        title: Text(
          "Custom App Bar",
          style: TextStyle(color: Colors.pink),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
        flexibleSpace: Image.asset(
          "assets/app_bar_background.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
