import 'package:flutter/material.dart';
import 'package:technical_test/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tech Test Levycon',
      home: Home(),
    );
  }
}
