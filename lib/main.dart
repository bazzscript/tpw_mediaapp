import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(
        headline1: TextStyle(
            color: Colors.white, fontSize: 19, fontWeight: FontWeight.w500),
        headline2: TextStyle(
            color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),
      )),
      home: HomeScreen(),
    );
  }
}
