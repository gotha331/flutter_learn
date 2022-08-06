import "package:flutter/material.dart";
import "res/listData.dart";

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

  List<Widget> _getListData() {
    var tempList = listData.map((item) {
      return Container(
        child: Column(
          children: [
            Image.network(item["imageUrl"]),
            SizedBox(height:14),
            Text(
              item["title"],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(199, 199, 199, 0.7),
            width: 1,
          ),
        ),
      );
    });

    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(10),
      crossAxisCount: 2, // 一行的widget数量
      crossAxisSpacing: 10.0, //水平子 widget之间间距
      mainAxisSpacing: 10.0, //垂直子 widget之间间距
      childAspectRatio: 1, //宽度和高度的比例
      children: _getListData(),
    );
  }
}
