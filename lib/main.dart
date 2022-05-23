import 'package:flutter/material.dart';
import 'package:styled_calculator/screens/main_screen.dart';

void main() {
  runApp(const BMIApp());
}

class BMIApp extends StatelessWidget {
  const BMIApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC calculator',
      theme: ThemeData(
        primaryColor: Color(0xff0a0e21),
      ),
      home: MainScreen(),
    );
  }
}
