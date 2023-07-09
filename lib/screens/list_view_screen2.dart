import 'package:flutter/material.dart';

class ListViewScreen2 extends StatelessWidget {
  final String name;
  final String phone;

  const ListViewScreen2(this.name, this.phone, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            // backgroundBlendMode: BlendMode.darken,
            image: DecorationImage(
          colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate),
          filterQuality: FilterQuality.high,
          image: AssetImage("assets/list_view_call_background.png"),
          fit: BoxFit.fill,
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "Calling...",
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
              Column(
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 37.0, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Mobile $phone",
                    style: const TextStyle(color: Colors.white),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: CircleAvatar(
                      radius: 70.0,
                      child: Icon(
                        Icons.person,
                        size: 100.0,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                    backgroundBlendMode: BlendMode.modulate),
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                // padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {
                            },
                            icon: const Icon(
                              Icons.voicemail,
                              color: Colors.white,
                            ),

                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.pause, color: Colors.white),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bluetooth, color: Colors.white)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.volume_up, color: Colors.white)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mic_off, color: Colors.white)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.keyboard_alt,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pop(ListViewScreen2(name, phone));
                            },
                            backgroundColor: Colors.red,
                            child: const Icon(Icons.call_end),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
