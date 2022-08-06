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
    return Container(
      height: 600.0,
      width: 400.0,
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconContainer(Icons.addchart, color: Colors.green, size: 32),
          IconContainer(Icons.align_horizontal_right_outlined,
              color: Colors.blue, size: 45),
          IconContainer(Icons.file_download_outlined,
              color: Colors.yellow, size: 56),
          IconContainer(Icons.plumbing_sharp, color: Colors.pink, size: 66),
        ],
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  double size;
  Color color;
  IconData icon;
  IconContainer(this.icon,
      {Key? key, this.color = Colors.green, this.size = 33})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.0,
        width: 100.0,
        color: color,
        child: Center(
          child: Icon(
            icon,
            size: size,
            color: Colors.white,
          ),
        ));
  }
}
