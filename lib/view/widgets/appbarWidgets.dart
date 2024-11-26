import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainLayout(),
    );
  }
}

// Common layout widget
class CommonLayout extends StatelessWidget {
  final String title;
  final Widget body;
  final int currentIndex;
  final ValueChanged<int> onTabTapped;

  const CommonLayout({
    Key? key,
    required this.title,
    required this.body,
    required this.currentIndex,
    required this.onTabTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

// Main layout with navigation
class MainLayout extends StatefulWidget {
  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _pages = [
    {
      'title': 'Home',
      'page': HomePage(),
    },
    {
      'title': 'Profile',
      'page': ProfilePage(),
    },
    {
      'title': 'Settings',
      'page': SettingsPage(),
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      title: _pages[_selectedIndex]['title'] as String,
      body: _pages[_selectedIndex]['page'] as Widget,
      currentIndex: _selectedIndex,
      onTabTapped: _onItemTapped,
    );
  }
}

// Pages
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Page Content'),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Page Content'),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Settings Page Content'),
    );
  }
}
