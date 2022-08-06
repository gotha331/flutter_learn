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
      padding: EdgeInsets.all(1),
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.add_link_outlined,
            color: Colors.pink,
            size: 60,
          ),
          title: Text(
            "华北黄淮高温持续 南方强降雨今日起强势登场",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          subtitle: Text(
              "阿胶糕看看哈嘎开生该好好过就卡是几个韩国胡静快乐哈是东莞看就是个合适的风格看来是东莞风格看见了深刻感觉呢，第三方；‘高考感觉"),
        ),
        ListTile(
          title: Text("华北黄淮高温持续 南方强降雨今日起强势登场"),
          subtitle: Text(
              "阿胶糕看看哈嘎开生该好好过就卡是几个韩国胡静快乐哈是东莞看就是个合适的风格看来是东莞风格看见了深刻感觉呢，第三方；‘高考感觉"),
          trailing: Icon(
            Icons.access_alarm,
            color: Colors.green,
            size: 33,
          ),
        ),
        ListTile(
          leading: Image.network(
              "https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/ec2f35b1bb5f4984833711b13b53e1c1~tplv-k3u1fbpfcp-zoom-crop-mark:3024:3024:3024:1702.awebp?"),
          title: Text("华北黄淮高温持续 南方强降雨今日起强势登场"),
          subtitle: Text(
              "阿胶糕看看哈嘎开生该好好过就卡是几个韩国胡静快乐哈是东莞看就是个合适的风格看来是东莞风格看见了深刻感觉呢，第三方；‘高考感觉"),
        ),
        ListTile(
          title: Text("华北黄淮高温持续 南方强降雨今日起强势登场"),
          subtitle: Text(
              "阿胶糕看看哈嘎开生该好好过就卡是几个韩国胡静快乐哈是东莞看就是个合适的风格看来是东莞风格看见了深刻感觉呢，第三方；‘高考感觉"),
        ),
        ListTile(
          title: Text("华北黄淮高温持续 南方强降雨今日起强势登场"),
          subtitle: Text(
              "阿胶糕看看哈嘎开生该好好过就卡是几个韩国胡静快乐哈是东莞看就是个合适的风格看来是东莞风格看见了深刻感觉呢，第三方；‘高考感觉"),
        ),
      ],
    );
  }
}
