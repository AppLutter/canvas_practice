import 'package:canvas_practice/theme.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: inAppTheme(),
      title: '캔버스 연습',
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
