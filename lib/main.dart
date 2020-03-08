import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '只是初始化的而已，看不到',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'dev分支',
            style: TextStyle(
              fontSize: 20,
              color: Colors.amberAccent
            )
          ),
        ),
        body: Center(
          child: Text('我是首页'),
        )
      )
    );
  }
}