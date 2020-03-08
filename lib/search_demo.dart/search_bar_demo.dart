import 'package:flutter/material.dart';
import 'asset.dart';
class SearchBarDemo extends StatefulWidget {
  @override
  _SearchBarDemoState createState() => _SearchBarDemoState();
}

class _SearchBarDemoState extends State<SearchBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索框'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              showSearch(context: context, delegate: SearchBarDelegate()); // 点击之后，显示搜索的效果。。。。(显示了一个新的也没。。。)
            })
        ],
      ),
      body: Center(
        child: Text('其实我一直都在'),
      )
    );
  }
}

class SearchBarDelegate extends SearchDelegate<String>{
  @override
  List<Widget> buildActions(// 复写右边的图标
    BuildContext context
  ){
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: ()=> query = ''
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) { // 左侧的在搜索页面，返回上级页面
    return IconButton( // 动态图标
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow, progress: transitionAnimation,
      ),
      onPressed: ()=> close(context, null), // 关闭上下文？
    );
  }


  @override
  Widget buildResults(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: Card(
        color: Colors.redAccent,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context){
    final suggestionList = query.isEmpty
    ? recentSuggets
    : serachList.where((input)=> input.startsWith(query)).toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) => ListTile(
        title: RichText(// 富文本，
          text: TextSpan(
            text: suggestionList[index].substring(0, query.length),// 截取效果
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: suggestionList[index].substring(query.length), // 截取
                style: TextStyle(color: Colors.grey)
              ),
            ]
          )
        )
      ),
    );
  }

}