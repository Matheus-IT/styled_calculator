import 'package:bmi_calculator/widgets/icon_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../consts.dart';
import '../widgets/round_card.dart';
import '../widgets/round_icon_button.dart';
import './result_screen.dart';

enum Gender {
  male,
  female,
}

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Gender gender = Gender.female;
  int height = 170;
  int weight = 55;
  int age = 25;

  Map<String, String> _bmiAnalysis() {
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
      'bmi': bmi.toStringAsFixed(1).replaceAll(RegExp(r'\.'), ','),
      'diagnosis': diagnosis,
      'comment': comment,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
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

                      debugPrint(gender == Gender.male ? 'MALE' : 'FEMALE');
                    },
                    child: RoundCard(
                      selected: gender == Gender.male,
                      child: const IconText(
                        icon: FontAwesomeIcons.mars,
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
                      debugPrint(gender == Gender.male ? 'MALE' : 'FEMALE');
                    },
                    child: RoundCard(
                      selected: gender == Gender.female,
                      child: const IconText(
                        icon: FontAwesomeIcons.venus,
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
                  const Text('ALTURA'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kBigFontStyle,
                      ),
                      const Text('cm'),
                    ],
                  ),
                  SliderTheme(
                    data: const SliderThemeData(
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 25.0,
                      ),
                    ),
                    child: Slider(
                      min: 100.0,
                      max: 220.0,
                      value: height.toDouble(),
                      activeColor: kSliderActiveColor,
                      inactiveColor: kSliderInactiveColor,
                      thumbColor: kSliderThumbColor,
                      onChanged: (double value) {
                        setState(() {
                          height = value.toInt();
                        });
                        //debugPrint('VALUE: $value / HEIGHT: $height');
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
                        const Text('PESO'),
                        Text(
                          weight.toString(),
                          style: kBigFontStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                if (weight > 1) {
                                  setState(() {
                                    weight--;
                                  });
                                }
                              },
                            ),
                            const SizedBox(
                              width: 15.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                if (weight < 300) {
                                  setState(() {
                                    weight++;
                                  });
                                }
                              },
                            ),
                          ],
                        ),
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
                        const Text('IDADE'),
                        Text(
                          age.toString(),
                          style: kBigFontStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                if (age > 1) {
                                  setState(() {
                                    age--;
                                  });
                                }
                              },
                            ),
                            const SizedBox(
                              width: 15.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                if (age < 150) {
                                  setState(() {
                                    age++;
                                  });
                                }
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                final Map<String, String> result = _bmiAnalysis();

                return ResultScreen(
                  diagnosis: result['diagnosis']!,
                  bmi: result['bmi']!,
                  comment: result['comment']!,
                );
              }));
            },
            style: TextButton.styleFrom(
              fixedSize: kButtonSize,
              primary: kButtonActiveColor,
              backgroundColor: kButtonColor,
            ),
            child: const Text('CALCULAR'),
          ),
        ],
      ),
    );
  }
}
