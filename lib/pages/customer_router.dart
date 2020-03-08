import 'package:flutter/material.dart';

class CustomerRoute extends PageRouteBuilder{
  final Widget widget;
  CustomerRoute(this.widget)
    :super(
      transitionDuration: Duration(seconds: 1),
      pageBuilder:(
        BuildContext context,
        Animation<double> animation1,
        Animation<double> animation2,
      ){
        return widget;
      },
      transitionsBuilder:(
        BuildContext context,
        Animation<double> animation1,
        Animation<double> animation2,
        Widget child
      ){
        return FadeTransition(
          opacity: Tween(begin: 0.0, end: 1.0)
          .animate(CurvedAnimation(
            parent: animation1, 
            curve: Curves.fastOutSlowIn,// 快出慢进
          )),
          child: child,
        );
      }
    );

}