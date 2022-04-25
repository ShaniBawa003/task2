import 'package:assignment_1/question_2/constants.dart';
import 'package:flutter/material.dart';
import 'editable_cardcontent.dart';
import 'resuable_card.dart';
import 'card_content.dart';
import 'circular_radius_button.dart';
import 'result_screen.dart';

enum Gender {
  male,
  female,
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender? selectedGender;
  double height = 50;
  double weight = 30;
  double age = 30;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: ResuableCard(
                    cardColor: selectedGender == Gender.male
                        ? activeCardColor
                        : inActiveCardColor,
                    cardChild: CardContent(
                      icon: Icons.male,
                      label: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: ResuableCard(
                    cardColor: selectedGender == Gender.female
                        ? activeCardColor
                        : inActiveCardColor,
                    cardChild: CardContent(
                      icon: Icons.female,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ResuableCard(
            cardColor: inActiveCardColor,
            cardChild: EditableCardContent(
              label: 'HEIGHT',
              cardValue: height.round().toString() +"cm",
              child: Slider(
                value: height,
                min: 0,
                max: 500,
                onChanged: (double value) {
                  setState(() {
                    height = value;
                  });
                },
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ResuableCard(
                  cardColor: inActiveCardColor,
                  cardChild: EditableCardContent(
                    label: 'WEIGHT',
                    cardValue: weight.round().toString(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        CircularRadiusButton(
                          icon: Icons.remove,
                          onPressed: () {
                            setState(() {
                              weight--;
                            });
                          },
                        ),
                        CircularRadiusButton(
                          icon: Icons.add,
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ResuableCard(
                  cardColor: inActiveCardColor,
                  cardChild: EditableCardContent(
                    label: 'AGE',
                    cardValue: age.round().toString(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        CircularRadiusButton(
                          icon: Icons.remove,
                          onPressed: () {
                            setState(() {
                              age--;
                            });
                          },
                        ),
                        CircularRadiusButton(
                          icon: Icons.add,
                          onPressed: () {
                            setState(() {
                              age++;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultScreen(
                    height: height,
                    weight: weight,
                  ),
                ),
              );
            },
            child: const Text(
              'Calculate',
              style: TextStyle(fontSize: 20),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.resolveWith((states) => btnColor),
            ),
          ),
        ),
      ],
    );
  }
}
