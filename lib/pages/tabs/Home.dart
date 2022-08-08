import "package:flutter/material.dart";
import "../Search.dart";
import "../Form.dart";
import "../Cart.dart";

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: Text("跳转到购物车页面"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CartPage(),
              ),
            );
          },
        ),
        SizedBox(height: 20),
        ElevatedButton(
          child: Text("跳转到表单页并传值"),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => FormPage(title: "我是传过来的值"),
              ),
            );
          },
        ),
        SizedBox(height: 20),
        ElevatedButton(
          child: Text("跳转到表单页-带上默认值"),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => FormPage(),
              ),
            );
          },
        ),
        SizedBox(height: 20),
        ElevatedButton(
          child: Text("命名路由跳转"),
          onPressed: () {
            Navigator.pushNamed(context, '/search',
                arguments: SearchArguments());
          },
        ),
        SizedBox(height: 20),
        ElevatedButton(
          child: Text("命名路由跳转 - 传值"),
          onPressed: () {
            Navigator.pushNamed(context, '/search',
                arguments: SearchArguments(id: 123, name: "暴富"));
          },
        ),
      ],
    );
  }
}
