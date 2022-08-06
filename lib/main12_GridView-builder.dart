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

  Widget _getListData(context, index) {
    return Container(
      child: Column(
        children: [
          Image.network(listData[index]["imageUrl"]),
          SizedBox(height: 14),
          Text(
            listData[index]["title"],
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
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: listData.length,
      itemBuilder: _getListData,
    );
  }
}
