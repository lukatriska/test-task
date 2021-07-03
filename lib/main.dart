import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color backgroundColor = const Color.fromRGBO(0, 0, 0, 1);

  void changeColor() => setState(() => backgroundColor = Color.fromRGBO(
          Random().nextInt(256),
          Random().nextInt(256),
          Random().nextInt(256),
          1,
        ));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solid Software Test Task',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: Scaffold(
        body: GestureDetector(
          behavior: HitTestBehavior.translucent,
          child: const Center(
            child: Text(
              'Hey there',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          onTap: changeColor,
        ),
      ),
    );
  }
}