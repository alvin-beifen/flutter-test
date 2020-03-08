import 'package:flutter/material.dart';

import './pages/pages.dart';
void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter router 效果',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPageScreen()
    );
  }
}