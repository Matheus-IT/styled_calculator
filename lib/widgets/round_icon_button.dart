import 'package:flutter/material.dart';

import '../consts.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;

  const RoundIconButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromRadius(kRoundButtonRadius),
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(5.0),
        primary: kRoundButtonColor,
        onPrimary: kRoundButtonSplashColor,
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
