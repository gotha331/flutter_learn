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
        width: 300,
        height: 300,
        // color: Colors.pink,
        child: Image.asset(
          'images/flutter.png',
          fit: BoxFit.contain,
        ),
        // child: ClipOval(
        //   child: Image.network(
        //     "https://static.facebstore.com/public/uploads/_/originals/special-photo-edit.jpg",
        //     height: 100,
        //     width: 100,
        //     fit: BoxFit.cover,
        //   ),
        // ),
      ),
    );
  }
}
