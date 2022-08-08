import "package:flutter/material.dart";
import "pages/Tabs.dart";
import "routes/Routes.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      routes: routes,
    );
  }
}
