import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:styled_calculator/consts/colors.dart';
import 'package:styled_calculator/consts/typography.dart';
import 'package:styled_calculator/widgets/card_content.dart';
import 'package:styled_calculator/widgets/round_card.dart';

import '../widgets/round_icon_button.dart';

enum Gender { male, female }

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Gender gender = Gender.male;
  int height = 175;
  int weight = 65;
  int age = 25;

  Map<String, String> weightAnalysis() {
    final mh = height / 100.0;
    final bmi = weight / (mh * mh);
    String diagnosis;
    String comment;

    if (bmi >= 17) {
      if (bmi >= 18.5) {
        if (bmi >= 25.0) {
          if (bmi >= 30.0) {
            diagnosis = 'obeso';
            comment =
                'Seu peso está muito acima do normal. Procure tratamento!';
          } else {
            diagnosis = 'sobrepeso';
            comment =
                'Seu peso está ligeiramente acima do normal. Tente comer menos!';
          }
        } else {
          diagnosis = 'peso normal';
          comment = 'Parabéns! Seu peso está dentro da faixa de normalidade.';
        }
      } else {
        diagnosis = 'magreza moderada';
        comment = 'Seu peso abaixo do normal. Tente comer um pouco mais!';
      }
    } else {
      diagnosis = 'magreza severa';
      comment = 'Seu peso está muito abaixo do normal. Tente comer mais!';
    }

    return {
      'bmi': bmi.toString(),
      'diagnosis': diagnosis,
      'comment': comment,
    };
  }

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
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        if (gender == Gender.female) {
                          setState(() {
                            gender = Gender.male;
                          });
                        }
                      },
                      child: RoundCard(
                        selected: gender == Gender.male,
                        child: const CardContent(
                          iconData: FontAwesomeIcons.mars,
                          label: 'HOMEM',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        if (gender == Gender.male) {
                          setState(() {
                            gender = Gender.female;
                          });
                        }
                      },
                      child: RoundCard(
                        selected: gender == Gender.female,
                        child: const CardContent(
                          iconData: FontAwesomeIcons.venus,
                          label: 'MULHER',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: RoundCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Altura'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: const TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text('cm'),
                      ],
                    ),
                    SliderTheme(
                      data: const SliderThemeData(
                        thumbColor: kSliderThumbColor,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                      ),
                      child: Slider(
                        min: 100.0,
                        max: 220.0,
                        activeColor: kSliderActiveColor,
                        value: height.toDouble(),
                        onChanged: (double value) {
                          debugPrint(value.toString());
                          setState(() => height = value.toInt());
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: RoundCard(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Peso'),
                          Text(weight.toString(), style: kBigFontStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() => {if (weight > 1) weight--});
                                },
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() => {if (weight > 1) weight++});
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: RoundCard(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Idade'),
                          Text(age.toString(), style: kBigFontStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() => {if (age > 1) age--});
                                },
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() => {if (age > 1) age++});
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 6),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Calcular',
                  style: TextStyle(color: kButtonActiveColor),
                ),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  backgroundColor: kButtonBackgroundColor,
                ),
              ),
            )
          ],
        ));
  }
}
