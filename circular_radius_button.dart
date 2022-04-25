import 'package:flutter/material.dart';

class CircularRadiusButton extends StatefulWidget {
  Function()? onPressed;
  IconData? icon;

  CircularRadiusButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  @override
  _CircularRadiusButtonState createState() => _CircularRadiusButtonState();
}

class _CircularRadiusButtonState extends State<CircularRadiusButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        color: const Color(0xFF212747),
        padding: const EdgeInsets.all(20),
        shape: const CircleBorder(),
        onPressed: widget.onPressed,
        child: Icon(
          widget.icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
