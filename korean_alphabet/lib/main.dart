
import 'package:flutter/material.dart';
import 'package:learn_korean_alphabet/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn Korean Alphabet',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}