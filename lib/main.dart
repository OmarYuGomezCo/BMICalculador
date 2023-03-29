import 'package:flutter/material.dart';
import 'inicio.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0XFF7800DB),
      ),
      debugShowCheckedModeBanner: false,
      home : Inicio(),
    );
  }
}

