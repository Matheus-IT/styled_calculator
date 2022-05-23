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
      home: MainScreen(),
    );
  }
}
