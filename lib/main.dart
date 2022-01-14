import 'package:flutter/material.dart';
import 'package:flutter_food_sea/home_page.dart';
// import 'package:flutter_food_sea/login_page.dart';
// import 'package:flutter_food_sea/onbording_page.dart';
// import 'package:flutter_food_sea/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SeaFood Apps',
        theme: ThemeData(
          primaryColor: const Color(0xff3267E3),
          fontFamily: 'SplineSans',
        ),
        home: const HomePage());
  }
}
