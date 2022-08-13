import "package:flutter/material.dart";

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(223, 223, 223, 0.9),
          title: Row(
            children: const [
              Expanded(
                child: TabBar(
                  isScrollable: true,
                  labelColor: Colors.green,
                  tabs: [
                    Tab(text: "热销"),
                    Tab(text: "推荐"),
                    Tab(text: "推荐1"),
                    Tab(text: "推荐2"),
                    Tab(text: "推荐3"),
                    Tab(text: "推荐4"),
                    Tab(text: "推荐5"),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          ListView(
            children: const [
              ListTile(
                title: Text("第1个热销tab"),
              ),
              ListTile(
                title: Text("第2个热销tab"),
              ),
              ListTile(
                title: Text("第3个热销tab"),
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
          ),
          ListView(
            children: const [
              ListTile(
                title: Text("推荐tab"),
              ),
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text("推荐tab"),
              ),
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text("推荐tab"),
              ),
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text("推荐tab"),
              ),
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text("推荐tab"),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
