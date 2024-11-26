import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lms_mobile/view/widgets/appbarWidgets.dart';

void main() {
  runApp(MyHomescreen());
}
class MyHomescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Set status bar to transparent
      statusBarIconBrightness: Brightness.light, // Set status bar icons color
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainLayout(),
    );
  }
}
