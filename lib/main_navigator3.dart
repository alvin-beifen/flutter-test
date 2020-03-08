import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: '页面返回数据',
    home: FirstPage()
  ));
}
class FirstPage extends StatelessWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('找小姐姐要电话')),
      body: Center(
        child: RouteButton()
      )
    );
  }
}

class RouteButton extends StatelessWidget {

  const RouteButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: (){_navigateToXiaoJieJie(context);},
      child: Text('去找小姐姐')
    );
  }

  _navigateToXiaoJieJie(BuildContext context) async{
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => XiaoJieJie())
    );
   Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));// 在底部会有一个弹框出现
  }
}

class XiaoJieJie extends StatelessWidget {
  const XiaoJieJie({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('找到小姐姐')
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('小姐姐'),
              onPressed: (){
                Navigator.pop(context, '大长腿小姐姐 150111111');
              },
            ),
            RaisedButton(
              child: Text('小蛮腰'),
              onPressed: (){
                Navigator.pop(context, '小蛮腰小姐姐 150222222');
              },
            )
          ],
        )
      )
    );
  }
}
