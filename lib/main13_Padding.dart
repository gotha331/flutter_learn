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
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.7,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/1.png",
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/2.png",
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/3.png",
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/4.png",
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/5.png",
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/6.png",
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/7.png",
                fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
