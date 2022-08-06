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

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        Image.network(
          "https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/ea78bf1ea746460f8ecace557bc4394e~tplv-k3u1fbpfcp-watermark.image",
        ),
        Container(
          height: 40,
          child: Text(
            "我是一个标题",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
        Image.network(
            "https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/1563602fcad3407f978a57840eefd4ee~tplv-k3u1fbpfcp-watermark.image"),
        Container(
          height: 10,
        ),
        Image.network(
            "https://p3-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/b2c4d2e7f4954ffbb393433c7ae4fd9a~tplv-k3u1fbpfcp-watermark.image"),
        Container(
          height: 10,
        ),
        Image.network(
            "https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/17265aa965bf42beb53d09536126069a~tplv-k3u1fbpfcp-watermark.image"),
      ],
    );
  }
}
