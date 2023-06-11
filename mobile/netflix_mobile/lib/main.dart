import 'package:flutter/material.dart';
import 'package:netflix_mobile/screens/screens.dart';
import 'package:netflix_mobile/configs/config.dart';
//import 'package:netflix_mobile/screens/splash_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Netflix UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Config.colors.primaryColor
      ),
      home: NavScreen(),
    );
  }
}
