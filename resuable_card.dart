import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
  Widget? cardChild;
  Color cardColor;

  ResuableCard({required this.cardColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: cardChild,
    );
  }
}
