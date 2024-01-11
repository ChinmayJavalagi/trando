import 'package:flutter/material.dart';
import 'package:trando/screens/home_screen.dart';
import 'package:trando/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trando Demo',
      home: HomeScreen(),
    );
  }
}
