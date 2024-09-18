import 'package:flutter/material.dart';
import 'package:onepiecelist/src/widgets/header_widget.dart';

void main() => runApp(const HomePage());

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 16, 16),
      body: Column(
        children: const <Widget>[
          HeaderWidget(),
        ],
      ),
    );
  }
}