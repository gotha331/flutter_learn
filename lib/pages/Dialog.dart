import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogDemoPage extends StatefulWidget {
  const DialogDemoPage({Key? key}) : super(key: key);

  @override
  State<DialogDemoPage> createState() => _DialogDemoPageState();
}

class _DialogDemoPageState extends State<DialogDemoPage> {
  _alertDialog() async {
    var result = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("提示"),
          content: Text("您确定要删除吗？"),
          actions: [
            ElevatedButton(
              onPressed: () {
                print("取消");
                Navigator.pop(context, "Cancel");
              },
              child: Text("取消"),
            ),
            ElevatedButton(
              onPressed: () {
                print("确定");
                Navigator.pop(context, "OK");
              },
              child: Text("确定"),
            ),
          ],
        );
      },
    );

    print(result);
  }

  _simpleDialog() async {
    var result = await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text("选择内容"),
          children: [
            SimpleDialogOption(
              child: Text("Option 1"),
              onPressed: () {
                print("Option 1");
                Navigator.pop(context, "1");
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text("Option 2"),
              onPressed: () {
                print("Option 2");
                Navigator.pop(context, "2");
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text("Option 3"),
              onPressed: () {
                print("Option 3");
                Navigator.pop(context, "3");
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text("Option 4"),
              onPressed: () {
                print("Option 4");
                Navigator.pop(context, "4");
              },
            ),
            Divider(),
          ],
        );
      },
    );

    print(result);
  }

  _modelBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 260,
          child: Column(
            children: [
              ListTile(
                title: Text("分享A"),
                onTap: () {
                  Navigator.pop(context, "A");
                },
              ),
              Divider(),
              ListTile(
                title: Text("分享B"),
                onTap: () {
                  Navigator.pop(context, "B");
                },
              ),
              Divider(),
              ListTile(
                title: Text("分享C"),
                onTap: () {
                  Navigator.pop(context, "C");
                },
              ),
            ],
          ),
        );
      },
    );
  }

  _toast() {
    // Fluttertoast.showToast(
    //   msg: "This is Center Short Toast",
    //   toastLength: Toast.LENGTH_SHORT,
    //   gravity: ToastGravity.CENTER,
    //   timeInSecForIosWeb: 1,
    //   backgroundColor: Colors.red,
    //   textColor: Colors.white,
    //   fontSize: 16.0,
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dialog demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _alertDialog,
              child: Text("alert弹出框-AlertDialog"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _simpleDialog,
              child: Text("select弹出框-SimpleDialog"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _modelBottomSheet,
              child: Text("ActionSheet弹出框-showModalBottomSheet"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toast,
              child: Text("toast-fluttertoast第三方库"),
            ),
          ],
        ),
      ),
    );
  }
}
