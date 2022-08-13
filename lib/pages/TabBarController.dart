import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  const TabBarControllerPage({Key? key}) : super(key: key);

  @override
  State<TabBarControllerPage> createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this)
      ..addListener(() {
        print(_tabController.indexIsChanging);
        if (!_tabController.indexIsChanging) {
          print(_tabController.index);
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TabBarControllerPage"),
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: '热销'),
              Tab(text: '推荐'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            Center(
              child: Text("热销"),
            ),
            Center(
              child: Text("推荐"),
            ),
          ],
        ));
  }
}
