import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/classes/Person.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    setData();
  }

  Future<Person> getData() async {
   Person person = await Future.delayed(const Duration(seconds: 5), (){
     return Person("Poorna Senaadheera", 22);
    });
   return person;
  }

  Future<void> setData() async{
    Person person = await getData();
    setState(() {
      nameController.text = person.name;
      ageController.text = person.age.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  const Text("Name"),
                  Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          controller: nameController,
                          enabled: false,
                          decoration: const InputDecoration(
                            hintText: "Loading...",
                          ),
                        ),
                      )
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  const Text("Age    "),
                  Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          controller: ageController,
                          enabled: false,
                          decoration: const InputDecoration(
                            hintText: "Loading..."
                          ),
                        ),
                      )
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
