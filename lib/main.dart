import 'package:flutter/material.dart';
import 'package:styled_calculator/consts/colors.dart';
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
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: darkColor,
      ),
      home: MainScreen(),
    );
  }
}
