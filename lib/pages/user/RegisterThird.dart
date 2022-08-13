import "package:flutter/material.dart";
import "../Tabs.dart";

class RegisterThirdPage extends StatelessWidget {
  const RegisterThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第三步-完成"),
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Text("注册完成"),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () => {
              // Navigator.pop(context),
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => Tabs(index:2),
                ),
                (route) => false,
              )
            },
            child: Text("确定"),
          )
        ],
      ),
    );
  }
}
