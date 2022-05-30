import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:styled_calculator/consts/colors.dart';
import 'package:styled_calculator/consts/tipography.dart';
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
                    Text('Altura'),
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
                        thumbColor: accentColor,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                      ),
                      child: Slider(
                        min: 100.0,
                        max: 220.0,
                        activeColor: white,
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
                          Text(weight.toString(), style: bigFontStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                          Text(age.toString(), style: bigFontStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
            TextButton(
              onPressed: () {},
              child: const Text(
                'Calcular',
                style: TextStyle(color: buttonActiveColor),
              ),
              style: TextButton.styleFrom(
                fixedSize: const Size.fromHeight(50.0),
                backgroundColor: buttonBackgroundColor,
              ),
            )
          ],
        ));
  }
}
