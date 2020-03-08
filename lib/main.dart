import 'package:flutter/material.dart';
import 'wrap/wrap_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wrap--流式布局',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: WrapDemo()
    );
  }
}