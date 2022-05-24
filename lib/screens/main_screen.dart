import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:styled_calculator/consts/colors.dart';
import 'package:styled_calculator/widgets/card_content.dart';
import 'package:styled_calculator/widgets/round_card.dart';

enum Gender { male, female }

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Gender gender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('IMC calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: const [
                  Expanded(
                    flex: 1,
                    child: RoundCard(
                      child: CardContent(
                        iconData: FontAwesomeIcons.mars,
                        label: 'HOMEM',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: RoundCard(
                      child: CardContent(
                        iconData: FontAwesomeIcons.venus,
                        label: 'MULHER',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: const [Expanded(flex: 1, child: RoundCard())],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: const [
                  Expanded(flex: 1, child: RoundCard()),
                  Expanded(flex: 1, child: RoundCard())
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Calcular'),
              style: TextButton.styleFrom(
                backgroundColor: buttonBackgroundColor,
              ),
            )
          ],
        ));
  }
}
