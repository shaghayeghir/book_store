import 'package:book_store/resources/theme_manager.dart';
import 'package:book_store/screens/homePage/homePage.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: getApplicationTheme(),
      home: const MyHomePage(),
    );
  }
}

