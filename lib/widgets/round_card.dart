import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundCard extends StatelessWidget {
  final Widget? child;

  const RoundCard({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: const Color(0xff4d1e33),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}
