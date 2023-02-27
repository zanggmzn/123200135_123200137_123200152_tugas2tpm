import 'package:flutter/material.dart';
import './menu.dart';

class Kalku extends StatefulWidget {
  const Kalku({super.key});

  @override
  State<Kalku> createState() => _KalkuState();
}

class _KalkuState extends State<Kalku> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  int? result = 0, input1 = 0, input2 = 0;
  tambah() {
    setState(() {
      input1 = int.parse(num1.text);
      input2 = int.parse(num2.text);
      result = input1! + input2!;
    });
  }

  kurang() {
    setState(() {
      input1 = int.parse(num1.text);
      input2 = int.parse(num2.text);
      result = input1! - input2!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sub/Add Calculator'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 239, 205, 244),
                Color.fromARGB(255, 239, 205, 244)
              ],
            ),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              TextField(
                controller: num1,
                decoration: InputDecoration(
                    labelText: "Input The 1st Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: num2,
                decoration: InputDecoration(
                    labelText: "Input The 2nd Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        tambah();
                        num1.clear();
                        num2.clear();
                      },
                      child: Text("A D D")),
                  ElevatedButton(
                      onPressed: () {
                        kurang();
                        num1.clear();
                        num2.clear();
                      },
                      child: Text("S U B")),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Text(
                "Result: $result",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}
