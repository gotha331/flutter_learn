import "package:flutter/material.dart";

class RegisterSecondPage extends StatelessWidget {
  const RegisterSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第二步-验证码"),
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Text("请输入验证码"),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () => {
              Navigator.pushNamed(context, '/register3'),
            },
            child: Text("下一步"),
          )
        ],
      ),
    );
  }
}
