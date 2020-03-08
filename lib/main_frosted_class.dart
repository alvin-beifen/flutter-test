import 'package:flutter/material.dart';
import 'frostedClass/frosted_class.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 磨砂效果',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: FrostedClassDemo(),
      ),
    );
  }
}