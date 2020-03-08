import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedClassDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('毛玻璃效果')
      ),
      body: Stack(
        children: <Widget>[
          ConstrainedBox( // 约束性的盒子, 添加额外的约束条件在child上
            constraints: BoxConstraints.expand(),
            child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1583670284745&di=c888d3a46a939586059456458c2aecdd&imgtype=0&src=http%3A%2F%2Ft9.baidu.com%2Fit%2Fu%3D4241966675%2C2405819829%26fm%3D79%26app%3D86%26f%3DJPEG%3Fw%3D1280%26h%3D854'),
          ),
          Center(
            child: ClipRect( // 可裁切的矩形。。。
              child: BackdropFilter(// 背景过滤器
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Opacity(
                  opacity: 0.6,
                  child: Container(
                    width: 500.0,
                    height: 700.0,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200, // 深度是200
                    ),
                    child: Center(
                      child: Text(
                        'JSpang',
                        style: Theme.of(context).textTheme.display3
                      ),
                    )
                  ),
                ),
              )
            )
          )
        ],
      )
    );
  }
}