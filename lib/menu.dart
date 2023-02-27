import 'package:flutter/material.dart';
import './kalkulator.dart';
import './datadiri.dart';

//tidak perlu main krn di main.dart
class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maths Main Menu'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        //infinity mengikuti ukuran layar
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(50, 150, 50, 280),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 192, 93, 120),
              Color.fromARGB(255, 115, 92, 158)
            ],
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Welcome Matee!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Please Select The Menu Below',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      //kondisi saat klik button login
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Data(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                          //padding: EdgeInsets.all(80),
                          minimumSize: const Size(300, 40),
                          primary: const Color.fromARGB(255, 0, 0, 0)),
                      child: const Text('Maths Gangs Biodata'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      //kondisi saat klik button login
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Kalku(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(300, 40),
                          primary: const Color.fromARGB(255, 0, 0, 0)),
                      child: const Text('Sub Add Calculator'),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
