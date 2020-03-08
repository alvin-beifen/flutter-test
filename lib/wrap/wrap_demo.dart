import 'package:flutter/material.dart';

class WrapDemo extends StatefulWidget {
  @override
  _WrapDemoState createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {
  List<Widget> myList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myList = List<Widget>()..add(buildAddButton());
  }


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('流式布局'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: width,
            height: height / 2, // 屏幕高度的一半
            color: Colors.grey,
            child: Wrap(
              children: myList,
              spacing: 26.0,
            ),
          ),
        ),
      )
    );
  }


  Widget buildAddButton(){
    return GestureDetector(
      onTap: (){
        if(myList.length < 9) {
          setState(() {
            myList.insert(myList.length-1, buildPhoto());
          });
        }
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.black54,
          child: Icon(Icons.add),
        ),
      ),
    );
  }


  Widget buildPhoto() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: 80.0,
        height: 80.0,
        color: Colors.amber,
        child: Center(
          child: Text('照片'),
        ),
      ),
    );
  }
}

