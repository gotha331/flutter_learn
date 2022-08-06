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
    // return Container(
    //   width: 300,
    //   child: AspectRatio(
    //     aspectRatio: 2.0 / 1.0,
    //     child: Container(
    //       color: Colors.red,
    //     ),
    //   ),
    // );

    return AspectRatio(
      aspectRatio: 3.0 / 1.0,
      child: Container(color: Colors.green),
    );
  }
}
