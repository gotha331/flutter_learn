import "package:flutter/material.dart";
import "tabs/Home.dart";
import "tabs/Category.dart";
import "tabs/Settings.dart";

class Tabs extends StatefulWidget {
  final index;
  const Tabs({Key? key, this.index = 0}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState(index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  _TabsState(index) {
    _currentIndex = index;
  }

  final List _pageList = [
    Homepage(),
    CategoryPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter demo"),
      ),
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        iconSize: 32.0,
        fixedColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "首页",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "分类",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "设置",
          ),
        ],
      ),
    );
  }
}
