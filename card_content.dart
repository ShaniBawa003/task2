import 'package:flutter/material.dart';
import 'constants.dart';

class CardContent extends StatelessWidget {
  IconData? icon;
  String? label;

  CardContent({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon,
          size: 90,
          color: const Color(0xFF8E8E99),
        ),
        Text(
          label.toString(),
          style: labelStyle,
        ),
      ],
    );
  }
}
