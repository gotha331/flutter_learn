import "package:flutter/material.dart";

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          child: Text("login"),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
        ),
        ElevatedButton(
          child: Text("跳转到注册页面"),
          onPressed: () {
            Navigator.pushNamed(context, '/register1');
          },
        ),
      ],
    );
  }
}
