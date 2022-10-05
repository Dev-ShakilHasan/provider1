import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/app_controller/app_controler.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data2 = Provider.of<AppControler>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Second Screen")),
      ),
      body: Center(
        child: Container(
          child: Text(
            "${data2.value}",
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
