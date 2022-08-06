import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: const [
              ListTile(
                title: Text("张三", style: TextStyle(fontSize: 20)),
                subtitle: Text("web前端高级工程师"),
              ),
              ListTile(
                title: Text("电话:18200000000", style: TextStyle(fontSize: 16)),
              ),
              ListTile(
                title: Text("地址:曲江公馆66号", style: TextStyle(fontSize: 16)),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: const [
              ListTile(
                title: Text("李四", style: TextStyle(fontSize: 20)),
                subtitle: Text("web前端高级工程师"),
              ),
              ListTile(
                title: Text("电话:18200000000", style: TextStyle(fontSize: 16)),
              ),
              ListTile(
                title: Text("地址:曲江公馆66号", style: TextStyle(fontSize: 16)),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: const [
              ListTile(
                title: Text("王五", style: TextStyle(fontSize: 20)),
                subtitle: Text("web前端高级工程师"),
              ),
              ListTile(
                title: Text("电话:18200000000", style: TextStyle(fontSize: 16)),
              ),
              ListTile(
                title: Text("地址:曲江公馆66号", style: TextStyle(fontSize: 16)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
