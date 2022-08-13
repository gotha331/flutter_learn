import "package:flutter/material.dart";

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("AppBarDemoPage"),
          backgroundColor: Colors.red,
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () {
          //     print("menu");
          //   },
          // ),
          // actions: [
          //   IconButton(
          //     onPressed: () {
          //       print("search");
          //     },
          //     icon: Icon(Icons.search),
          //   ),
          //   IconButton(
          //     onPressed: () {
          //       print("setting");
          //     },
          //     icon: Icon(Icons.settings),
          //   ),
          // ],
          bottom: TabBar(
            tabs: const [
              Tab(text: "热门"),
              Tab(text: "推荐"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: const [
                ListTile(
                  title: Text("第1个热门tab"),
                ),
                ListTile(
                  title: Text("第2个热门tab"),
                ),
                ListTile(
                  title: Text("第3个热门tab"),
                ),
              ],
            ),
            ListView(
              children: const [
                ListTile(
                  title: Text("第1个推荐tab"),
                ),
                ListTile(
                  title: Text("第2个推荐tab"),
                ),
                ListTile(
                  title: Text("第3个推荐tab"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
