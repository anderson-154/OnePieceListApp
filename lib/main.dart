import 'package:flutter/material.dart';
import 'package:onepiecelist/src/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main',
      home: HomePage()
    );
  }
}