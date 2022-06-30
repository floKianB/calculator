import 'package:flutter/material.dart';
import './calculator.dart';
void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color.fromRGBO(40,53,56,1)),
      home: Scaffold(
        body: SafeArea(
          child: Calculator(),
        ),
      ),
    );
  }
}