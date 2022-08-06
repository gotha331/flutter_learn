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
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          children: const [
            Align(
              alignment: Alignment(0, 0),
              child: Icon(Icons.home, size: 40, color: Colors.white),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Icon(Icons.alarm, size: 40, color: Colors.blue),
            ),
            Positioned(
              right: 0,
              top: 150,
              child: Icon(Icons.share, size: 40, color: Colors.green),
            )
          ],
        ),
      ),
    );
  }
}
