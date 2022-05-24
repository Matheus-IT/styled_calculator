import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  final IconData? iconData;
  final String label;

  const CardContent({
    Key? key,
    this.iconData,
    required this.label,
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
