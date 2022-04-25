import 'package:flutter/material.dart';
import 'dart:math';
import 'constants.dart';

class ResultScreen extends StatelessWidget {
  final double height;
  final double weight;
  String status = '';
  double result = 0;

  ResultScreen({required this.height, required this.weight});

  List calculate_bmi() {
    result = (weight / pow(height / 100, 2));
    if (result < 18.5) {
      status = 'Underweight';
    } else if (result >= 18.5 && result <= 24.9) {
      status = 'Normal';
    } else if (result >= 25 && result <= 29.9) {
      status = 'Overweight';
    } else if (result >= 30 && result <= 35) {
      status = 'Obesity';
    } else if (result > 35) {
      status = 'Severe Obesity';
    }
    return [status, result];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: bodyColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: const Text(
                  'Your Result',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: const Color(0xFF1D1F33),
                  margin: const EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        calculate_bmi()[0],
                        style: const TextStyle(
                          color: Color(0xFF22E67B),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        calculate_bmi()[1].toStringAsFixed(1),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 90,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'You have a ' +
                            calculate_bmi()[0] +
                            ' body weight.',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'RE-CALCULATE YOUR BMI',
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.resolveWith(
                      (states) => const EdgeInsets.all(25)),
                  backgroundColor:
                      MaterialStateProperty.resolveWith((states) => btnColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
