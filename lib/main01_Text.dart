import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter demo"),
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
    return Center(
      child: Container(
        child: Text(
          "hello,taiwan!",
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          textScaleFactor: 2,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.green,
            decorationStyle: TextDecorationStyle.dotted,
            color: Colors.red,
          ),
        ),
        width: 300.0,
        height: 300.0,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 4.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        // padding: EdgeInsets.all(20),
        padding: EdgeInsets.fromLTRB(10, 30, 5, 0),
        // transform: Matrix4.translationValues(30, 0, 0),
        // transform: Matrix4.rotationZ(-0.3),
        alignment: Alignment.bottomLeft,
      ),
    );
  }
}
