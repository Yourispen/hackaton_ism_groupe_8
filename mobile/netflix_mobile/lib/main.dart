import 'package:flutter/material.dart';
import 'package:netflix_mobile/screens/login.dart';
import 'package:netflix_mobile/screens/play/nav_screen_play.dart';
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
      //home: NavScreen(),
      //home: const Login(),
      initialRoute: "/login",
      routes: {
        '/home': (context) => NavScreen(),
        '/login': (context) => const Login(),
        '/play': (context) => NavScreenPlay(),
      },
    );
  }
}
