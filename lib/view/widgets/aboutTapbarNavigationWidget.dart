import 'package:flutter/material.dart';

import '../screen/about/about_my_directorScreen.dart';
import '../screen/about/about_our_teamScreen.dart';
import '../screen/about/myHomeAboutIstadScreen.dart';

class AboutTapbarNavigation extends StatefulWidget {
  @override
  _TabNavigationScreenState createState() => _TabNavigationScreenState();
}

class _TabNavigationScreenState extends State<AboutTapbarNavigation> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // 3 tabs in this example
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'About ISTAD'),
              Tab(text: 'My Director'),
              Tab(text: 'Our Team'),
            ],
          ),

          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                HomeIstadScreen(),
                DirectorScreen(),
                OurTeamScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



