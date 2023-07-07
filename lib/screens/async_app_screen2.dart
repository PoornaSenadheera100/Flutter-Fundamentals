import 'package:flutter/material.dart';

class AsyncAppScreen2 extends StatefulWidget {
  const AsyncAppScreen2({super.key});

  @override
  State<AsyncAppScreen2> createState() => _AsyncAppScreen2State();
}

class _AsyncAppScreen2State extends State<AsyncAppScreen2> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  void loadData() {
    Future.delayed(const Duration(seconds: 5), () {
      _nameController.text = "Poorna Senadheera";
      _ageController.text = "22";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                const Text("Name :   "),
                Flexible(
                    child: TextField(
                  enabled: false,
                  controller: _nameController,
                  decoration: const InputDecoration(
                    hintText: "Loading...",
                    border: InputBorder.none,
                  ),
                )),
              ],
            ),
            Row(
              children: [
                const Text("Age     :   "),
                Flexible(
                    child: TextField(
                  enabled: false,
                  controller: _ageController,
                  decoration: const InputDecoration(
                    hintText: "Loading...",
                    border: InputBorder.none,
                  ),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
