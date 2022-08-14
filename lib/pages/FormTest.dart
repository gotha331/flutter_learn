import 'package:flutter/material.dart';

class FormTestPage extends StatefulWidget {
  const FormTestPage({Key? key}) : super(key: key);

  @override
  State<FormTestPage> createState() => _FormTestPageState();
}

class _FormTestPageState extends State<FormTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("表单演示页面"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: const [
            TextFiledDemo(),
            CheckBoxDemo(),
            RadioDemo(),
            SwitchDemo(),
          ],
        ),
      ),
    );
  }
}

class TextFiledDemo extends StatefulWidget {
  const TextFiledDemo({Key? key}) : super(key: key);

  @override
  State<TextFiledDemo> createState() => _TextFiledDemoState();
}

class _TextFiledDemoState extends State<TextFiledDemo> {
  final _username = TextEditingController();

  @override
  void initState() {
    super.initState();
    _username.text = "初始值";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          maxLength: 100,
          maxLines: 4,
          decoration: InputDecoration(
            hintText: "请输入...",
            hintStyle: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
            border: OutlineInputBorder(),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "用户名",
            prefixIcon: Icon(Icons.people),
          ),
          controller: _username,
        ),
        SizedBox(height: 20),
        TextField(
          obscureText: true, //密码框
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "密码",
          ),
        ),
        ElevatedButton(
          onPressed: () {
            print(_username.text);
          },
          child: Text("获取用户名"),
        ),
      ],
    );
  }
}

class CheckBoxDemo extends StatefulWidget {
  const CheckBoxDemo({Key? key}) : super(key: key);

  @override
  State<CheckBoxDemo> createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  var _flag = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              value: _flag,
              onChanged: (flag) {
                setState(() {
                  _flag = flag!;
                  print(_flag);
                });
              },
              activeColor: Colors.red,
            ),
          ],
        ),
        CheckboxListTile(
          value: _flag,
          onChanged: (v) {
            setState(() {
              _flag = v!;
            });
          },
          title: Text("标题"),
          subtitle: Text("我是副标题"),
          secondary: Icon(Icons.settings_input_antenna),
        ),
      ],
    );
  }
}

class RadioDemo extends StatefulWidget {
  const RadioDemo({Key? key}) : super(key: key);

  @override
  State<RadioDemo> createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  var sex = 1;
  var gender = '女';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("男"),
            Radio(
              value: 0,
              groupValue: sex,
              onChanged: (v) {
                setState(() {
                  sex = v as int;
                  gender = sex == 0 ? "男" : "女";
                });
              },
            ),
            Text("女"),
            Radio(
              value: 1,
              groupValue: sex,
              onChanged: (v) {
                setState(() {
                  sex = v as int;
                  gender = sex == 0 ? "男" : "女";
                });
              },
            ),
          ],
        ),
        Row(
          children: [
            Text("选中的是$gender"),
          ],
        ),
        SizedBox(height: 20),
        Column(
          children: [
            RadioListTile(
              title: Text("男"),
              subtitle: Text("我是副标题"),
              secondary:
                  Image.network("https://www.itying.com/images/flutter/1.png"),
              selected: sex == 0,
              value: 0,
              groupValue: sex,
              onChanged: (v) {
                setState(() {
                  sex = v as int;
                });
              },
            ),
            RadioListTile(
              title: Text("女"),
              subtitle: Text("我是副标题"),
              secondary: Icon(Icons.help),
              selected: sex == 1,
              value: 1,
              groupValue: sex,
              onChanged: (v) {
                setState(() {
                  sex = v as int;
                });
              },
            ),
          ],
        )
      ],
    );
  }
}

class SwitchDemo extends StatefulWidget {
  const SwitchDemo({Key? key}) : super(key: key);

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  var s = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
            value: s,
            onChanged: (v) {
              setState(() {
                s = v;
              });
            })
      ],
    );
  }
}
