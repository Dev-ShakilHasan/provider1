import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/app_controller/app_controler.dart';
import 'package:provider1/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<AppControler>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("HomeScreen")),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "${data.value}",
            style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(185, 14, 238, 44))),
              onPressed: () {
                data.increment();
              },
              child: const Text(
                "Addition",
                style: TextStyle(fontSize: 20),
              )),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(174, 160, 22, 56))),
              onPressed: () {
                data.decrement();
              },
              child: const Text(
                "Substraction",
                style: TextStyle(fontSize: 20),
              )),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 8, 193, 206))),
              onPressed: () {
                data.reset();
              },
              child: const Text(
                "Reset",
                style: TextStyle(fontSize: 20),
              )),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              child: const Text(
                "Second Screen ",
                style: TextStyle(fontSize: 25),
              ))
        ]),
      ),
    );
  }
}
