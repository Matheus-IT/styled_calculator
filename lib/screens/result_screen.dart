import 'package:flutter/material.dart';

import '../consts.dart';
import '../widgets/round_card.dart';

class ResultScreen extends StatelessWidget {
  final String diagnosis;
  final String bmi;
  final String comment;

  ResultScreen({
    required this.diagnosis,
    required this.bmi,
    required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de IMC'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Seus Resultados',
              style: kTitleStyle,
            ),
          ),
          Expanded(
            child: RoundCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    diagnosis.toUpperCase(),
                    style: kDiagnosisStyle,
                  ),
                  Text(
                    bmi,
                    style: kLargeFontStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      comment,
                      style: kCommentStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: TextButton.styleFrom(
              fixedSize: kButtonSize,
              primary: kButtonActiveColor,
              backgroundColor: kButtonColor,
            ),
            child: const Text('RECALCULAR'),
          ),
        ],
      ),
    );
  }
}
