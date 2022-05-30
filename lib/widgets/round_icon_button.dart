import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../consts/colors.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;

  const RoundIconButton({Key? key, required this.icon, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20),
        primary: buttonColor,
        onPrimary: buttonSplashColor,
        minimumSize: roundButtonRadius,
      ),
      child: Icon(
        icon,
        color: white,
      ),
    );
  }
}
