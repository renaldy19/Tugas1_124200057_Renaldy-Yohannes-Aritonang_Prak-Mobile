import 'package:flutter/material.dart';
// Contoh pemanggilan class ditempat lain agar bisa digunakan
import 'home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: SafeArea(
            child: HomePage()
        )
    );
  }
}