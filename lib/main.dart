import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/app_controller/app_controler.dart';
import 'package:provider1/screens/home.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppControler(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
