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
        // return FadeTransition( // 渐隐渐现
        //   opacity: Tween(begin: 0.0, end: 1.0)
        //   .animate(CurvedAnimation(
        //     parent: animation1, 
        //     curve: Curves.fastOutSlowIn,// 快出慢进
        //   )),
        //   child: child,
        // );

        // return ScaleTransition( // 旋转缩小放大效果
        //   scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        //     parent: animation1,
        //     curve: Curves.fastOutSlowIn
        //   )),
        //   child: child
        // );
        // return RotationTransition(
        //   turns: Tween(begin: 0.0, end: 1.0)
        //   .animate(CurvedAnimation(
        //     parent: animation1,
        //     curve: Curves.fastOutSlowIn
        //     )),
        //   child: ScaleTransition(
        //     scale: Tween(begin: 0.0, end: 1.0)
        //     .animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)),
        //     child: child, // 其实就是可以添加多种效果的
        //   ),
        // );
        return SlideTransition( // 左右滑动效果
          position: Tween<Offset>(
            begin: Offset(-1.0, 0.0),
            end: Offset(0.0, 0.0)
          )
          .animate(CurvedAnimation(
            parent: animation1,
            curve: Curves.fastOutSlowIn
          )),
          child: child,
        );
      }
    );
}
