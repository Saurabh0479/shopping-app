import 'package:flutter/material.dart';
import 'package:shopping_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      theme: ThemeData(
        fontFamily: 'Kameron',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(192, 57, 43, 1.0)
        ),
      ),
      home: HomePage(),
    );
  }
}
