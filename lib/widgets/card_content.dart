import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  final IconData? iconData;
  final String label;
  final double iconSize;

  const CardContent({
    Key? key,
    this.iconData,
    required this.label,
    this.iconSize = 60,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, size: 60),
        const SizedBox(height: 10),
        Text(label),
      ],
    );
  }
}
