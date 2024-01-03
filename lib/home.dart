import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController textcontroller = TextEditingController();

  TextEditingController textcontroller1 = TextEditingController();

  String c = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Adder'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              c,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: textcontroller,
                decoration: const InputDecoration(
                    hintText: 'Enter anything', border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: textcontroller1,
                decoration: const InputDecoration(
                    hintText: 'Enter anything', border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    add();
                  });
                },
                child: const Icon(Icons.add))
          ],
        ),
      ),
    );
  }

  void add() {
    final a = textcontroller.text;
    final b = textcontroller1.text;
    c = a + b;
  }
}
