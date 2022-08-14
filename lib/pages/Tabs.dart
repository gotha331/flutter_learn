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
      floatingActionButton: Container(
        height: 80,
        width: 80,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              _currentIndex = 1;
            });
          },
          child: Icon(Icons.add, size: 36),
          backgroundColor: _currentIndex == 1 ? Colors.red : Colors.yellow,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(
                  // child: DrawerHeader(
                  //   child: Text(
                  //     "你好,flutter!",
                  //     style: TextStyle(color: Colors.pink),
                  //   ),
                  //   decoration: BoxDecoration(
                  //     // color: Colors.yellow,
                  //     image: DecorationImage(
                  //       image: NetworkImage(
                  //           "https://www.itying.com/images/flutter/2.png"),
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  // ),

                  child: UserAccountsDrawerHeader(
                    accountName: Text("xxx"),
                    accountEmail: Text("xxx@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.itying.com/images/flutter/2.png"),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://www.itying.com/images/flutter/1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text("我的空间"),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text("用户中心"),
              onTap: () {
                // Navigator.pop(context); // 隐藏侧边栏
                // Navigator.pushNamed(context, '/user');
                Navigator.popAndPushNamed(context, '/user');
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text("设置中心"),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: const [
            SizedBox(height: 40),
            Text("你好，flutter!"),
          ],
        ),
      ),
    );
  }
}
