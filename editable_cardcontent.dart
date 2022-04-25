import 'package:flutter/material.dart';
import 'constants.dart';

class EditableCardContent extends StatefulWidget {
  final String label;
  final String cardValue;
  final Widget child;

  EditableCardContent(
      {required this.label, required this.cardValue, required this.child});

  @override
  _EditableCardContentState createState() => _EditableCardContentState();
}

class _EditableCardContentState extends State<EditableCardContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.label,
          style: labelStyle,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          widget.cardValue,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        widget.child,
      ],
    );
  }
}
