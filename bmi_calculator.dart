import 'package:flutter/material.dart';
import 'homepage.dart';
import 'constants.dart';


class BMI extends StatelessWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: bodyColor,
          appBar: AppBar(
            title: const Text(
              'BMI CALCULATOR',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: appBarColor,
          ),
          body: const HomePage(),
        ),
      ),
    );
  }
}
