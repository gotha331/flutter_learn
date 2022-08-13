import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
      ),
      body: LoginContent(),
    );
  }
}

class LoginContent extends StatelessWidget {
  const LoginContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text("登录成功！"),
        ElevatedButton(
          onPressed: () => {
            Navigator.pop(context),
          },
          child: Text("返回主页面"),
        ),
      ]),
    );
  }
}
