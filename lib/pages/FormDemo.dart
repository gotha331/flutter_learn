import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  const FormDemoPage({Key? key}) : super(key: key);

  @override
  State<FormDemoPage> createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemoPage> {
  String username = "";
  String info = "";
  int sex = 1;
  List hobbyList = [
    {
      "checked": false,
      "title": "吃饭",
    },
    {
      "checked": false,
      "title": "睡觉",
    },
    {
      "checked": false,
      "title": "写代码",
    },
  ];

  List hobby = [];

  List<Widget> _getHobby() {
    List<Widget> tempList = [];
    for (var i = 0; i < hobbyList.length; i++) {
      tempList.addAll([
        Row(
          children: [
            Checkbox(
              value: hobbyList[i]["checked"],
              // materialTapTargetSize:MaterialTapTargetSize.shrinkWrap,
              onChanged: (value) {
                setState(() {
                  hobbyList[i]["checked"] = value;
                  if (value!) {
                    hobby.add(hobbyList[i]["title"]);
                  } else {
                    hobby.removeWhere((e) => e == hobbyList[i]["title"]);
                  }
                });
              },
            ),
            Text(hobbyList[i]["title"]),
          ],
        )
      ]);
    }

    return tempList;
  }

  void _setSex(value) {
    setState(() {
      sex = value as int;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("学员登记系统"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              maxLength: 4,
              decoration: InputDecoration(
                hintText: "请输入用户姓名",
              ),
              onChanged: (value) {
                username = value;
              },
            ),
            Row(
              children: [
                Text("男"),
                Radio(
                  value: 1,
                  groupValue: sex,
                  onChanged: _setSex,
                ),
                SizedBox(width: 20),
                Text("女"),
                Radio(
                  value: 2,
                  groupValue: sex,
                  onChanged: _setSex,
                )
              ],
            ),
            Column(
              children: _getHobby(),
            ),
            TextField(
              maxLength: 300,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "备注信息",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                info = value;
              },
            ),
            Container(
              width: 100.0,
              height: 40,
              child: ElevatedButton(
                child: Text("获取数据"),
                onPressed: () {
                  print(username);
                  print(sex);
                  print(hobby);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
