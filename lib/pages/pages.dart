import 'package:flutter/material.dart';
import 'customer_router.dart';
class FirstPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'FirstPage',
          style: TextStyle(
            fontSize: 36.0
          ),
        ),
        elevation: 4.0, // appbar 和body之间的那个分割线
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64.0
          ),
          onPressed: (){
            Navigator.of(context).push(CustomerRoute(SecondPageScreen()));
          },
        ),
      )
    );
  }
}

class SecondPageScreen extends StatelessWidget {
  const SecondPageScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text(
          'SecondPage',
          style: TextStyle(
            fontSize: 36.0
          ),
        ),
        backgroundColor: Colors.pinkAccent,
        leading: Container(),
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0
          ),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}