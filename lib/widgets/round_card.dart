import 'package:flutter/material.dart';

class RoundCard extends StatelessWidget {
  const RoundCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xff4d1e33),
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.all(10.0),
      child: const Text('Hello'),
    );
  }
}
