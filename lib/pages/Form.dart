import "package:flutter/material.dart";

class FormPage extends StatelessWidget {
  String title;
  FormPage({Key? key, this.title = "我是默认值"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text("返回"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: const [
            ListTile(
              title: Text("我是表单页面"),
            ),
            ListTile(
              title: Text("我是表单页面"),
            ),
            ListTile(
              title: Text("我是表单页面"),
            ),
            ListTile(
              title: Text("我是表单页面"),
            ),
            ListTile(
              title: Text("我是表单页面"),
            ),
          ],
        ));
  }
}
