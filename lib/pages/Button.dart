import 'package:flutter/material.dart';

class ButtonDemoPage extends StatelessWidget {
  const ButtonDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("button演示页面"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Wrap(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("普通按钮"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("有颜色按钮"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("有阴影按钮"),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(20),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.search),
                label: Text("带图标的按钮"),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.search),
                label: Text("圆角按钮"),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text("文本按钮"),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text("线框按钮"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 80,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("自定义宽高的按钮"),
                ),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("圆形按钮"),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      CircleBorder(
                        side: BorderSide(
                          color: Colors.green,
                          width: 100,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  margin: EdgeInsets.all(10),
                  child: SizedBox(
                    width: 200,
                    height: 80,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("自适应按钮"),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonBar(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("登录"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("注册"),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(
                pressed: () {},
                text: "自定义按钮",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// 自定义组件
class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final width;
  final height;
  const MyButton(
      {Key? key,
      this.text = "",
      this.width = 120.0,
      this.height = 30.0,
      this.pressed = null})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ElevatedButton(
        child: Text(text),
        onPressed: pressed,
      ),
    );
  }
}
