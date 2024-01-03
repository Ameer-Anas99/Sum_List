import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sum_value/controller/provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Center(
          child: Text(
            'Text Adder',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Center(
        child: Consumer<TextProvider>(
          builder: (context, pro, child) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                // c,
                pro.c,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: pro.textcontroller,
                  decoration: const InputDecoration(
                      hintText: 'Enter anything', border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: pro.textcontroller1,
                  decoration: const InputDecoration(
                      hintText: 'Enter anything', border: OutlineInputBorder()),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    // setState(() {
                    //   add();
                    // });
                    pro.add();
                  },
                  child: const Icon(Icons.add))
            ],
          ),
        ),
      ),
    );
  }
}
