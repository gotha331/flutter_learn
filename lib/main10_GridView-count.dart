import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("FlutterDemo"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  List<Widget> _getListData() {
    List<Widget> list = [];

    for (var i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          "我是第$i条数据",
          style: TextStyle(color: Colors.blue, fontSize: 16),
        ),
        color: Colors.yellow,
      ));
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(10),
      crossAxisCount: 4, // 一行的widget数量
      crossAxisSpacing: 20.0, //水平子 widget之间间距
      mainAxisSpacing: 20.0, //垂直子 widget之间间距
      childAspectRatio: 0.7, //宽度和高度的比例
      children: _getListData(),
    );
  }
}
