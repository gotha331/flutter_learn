import "package:flutter/material.dart";

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 接收路由页面传过来的值
    final args = ModalRoute.of(context)!.settings.arguments as SearchArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("搜索页面"),
      ),
      body: Text("搜索页面内容区域${args.id} - ${args.name}"),
    );
  }
}

class SearchArguments {
  final int id;
  final String name;

  SearchArguments({this.id = 0, this.name = ""});
}
