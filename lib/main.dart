import 'package:flutter/material.dart';
import 'package:lms_mobile/view/home.dart';
import 'package:lms_mobile/view/screen/splashScreen/splash_screen.dart'; // Import HomeScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
    );
  }
}
