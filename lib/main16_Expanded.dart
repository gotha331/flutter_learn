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
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: IconContainer(Icons.addchart, color: Colors.green, size: 32),
        ),
        Expanded(
          flex: 2,
          child:
              IconContainer(Icons.plumbing_sharp, color: Colors.pink, size: 66),
        ),
        Expanded(
          flex: 1,
          child: IconContainer(Icons.addchart, color: Colors.green, size: 32),
        ),
      ],
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
