import "package:flutter/material.dart";
import "./res/listData.dart";

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

  //  自定义方法
  List<Widget> _getData() {
    var tempList = listData.map((item) {
      return ListTile(
        leading: Image.network(item["imageUrl"]),
        title: Text(item["title"]),
        subtitle: Text(item["author"]),
      );
    });

    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _getData(),
    );
  }
}
