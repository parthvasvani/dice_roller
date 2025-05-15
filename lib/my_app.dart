import 'package:flutter/material.dart';

import 'Dice.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('DICE'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Dice(),
      ),
    );
  }
}
