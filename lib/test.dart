import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('TextFormField PlaceHolder example'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              decoration: BoxDecoration(
                  color: Colors.green.shade300,
                  borderRadius: BorderRadius.circular(36)),
              child: TextFormField(
                cursorColor: Colors.white,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration.collapsed(
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  hintText: 'Enter something',
                ),
              ),
            ),
          ),
        ));
  }
}
