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
        // child: Image.network(
        //   "https://i0.hdslb.com/bfs/archive/ea75e82155be726a059a584edfe075ba6a873dc9.png",
        //   // alignment: Alignment.topLeft,
        //   color: Colors.yellow,
        //   colorBlendMode: BlendMode.difference,
        //   // fit: BoxFit.contain,
        // ),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(150),
          image: DecorationImage(
            image: NetworkImage(
                "https://i0.hdslb.com/bfs/archive/ea75e82155be726a059a584edfe075ba6a873dc9.png"),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
