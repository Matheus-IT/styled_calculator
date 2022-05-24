import 'package:flutter/material.dart';
import 'package:styled_calculator/consts/colors.dart';

class RoundCard extends StatelessWidget {
  final Widget? child;
  final bool selected;

  const RoundCard({
    Key? key,
    this.child,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = selected ? selectedColor : unselectedColor;

    return Container(
      height: double.infinity,
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}
