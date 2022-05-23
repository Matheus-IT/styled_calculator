import 'package:flutter/material.dart';
import 'package:styled_calculator/widgets/round_card.dart';

class MainScreen extends StatelessWidget {
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
                children: [
                  Expanded(flex: 1, child: RoundCard()),
                  Expanded(flex: 1, child: RoundCard())
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [Expanded(flex: 1, child: RoundCard())],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(flex: 1, child: RoundCard()),
                  Expanded(flex: 1, child: RoundCard())
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Calcular'),
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xff8d8e98),
              ),
            )
          ],
        ));
  }
}
