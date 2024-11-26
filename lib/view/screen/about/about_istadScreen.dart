import 'package:flutter/material.dart';

import '../../widgets/appbarWidgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      initialIndex: 1,
      body: Center(
        child: Text('Profile Page Content'),
      ),
    );
  }
}
