import 'package:flutter/material.dart';
import 'package:lms_mobile/view/widgets/appbar_and_bottom_navigation_widgets.dart';
import 'package:lms_mobile/view/widgets/video_background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _pages = [
    {
      'title': 'Home',
      'page': Center(
        child: VideoBackgroundPage(),
      )
    },
    {
      'title': 'Academic',
      'page': Center(child: Text('Academic Page Content')),
    },
    {
      'title': 'About',
      'page': Center(child: Text('About Page Content')),
    },
    {
      'title': 'LMS',
      'page': Center(child: Text('LMS Page Content')),
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      title: _pages[_selectedIndex]['title'] as String,
      body: _pages[_selectedIndex]['page'] as Widget,
      currentIndex: _selectedIndex,
      onTabTapped: _onItemTapped,
    );
  }
}
