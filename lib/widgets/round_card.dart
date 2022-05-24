import 'package:flutter/material.dart';
import 'package:styled_calculator/consts/colors.dart';

class RoundCard extends StatelessWidget {
  final Widget? child;
  final bool enabled;

  const RoundCard({
    Key? key,
    this.child,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = enabled ? enabledColor : disabledColor;

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
