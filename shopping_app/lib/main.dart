import 'package:flutter/material.dart';
// import 'package:shopping_app/global_variables.dart';
import 'package:shopping_app/home_page.dart';
// import 'package:shopping_app/product_details_page.dart';

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
          seedColor: Color.fromRGBO(192, 57, 43, 1.0),
          primary: Color.fromRGBO(192, 57, 43, 1.0),
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 33
                      ),
          titleMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          bodySmall: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        useMaterial3: true,
      ),
      home: HomePage( 
        // product: products[0],  //for ProductDetailsPages
      ),
    );
  }
}
