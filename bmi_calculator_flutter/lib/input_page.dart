import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator_flutter/widgets/constants.dart';
import 'widgets/reusable_card.dart';
import 'widgets/icon_content.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color _maleCardColor = kIinactiveCardColor;
  Color _femaleCardColor = kIinactiveCardColor;
  Gender? _selectedGender;

  void _updateCardColor(Gender cardType) {
    if (cardType == Gender.male) {
      if (_maleCardColor == kIinactiveCardColor) {
        _maleCardColor = kActiveCardColor;
        _femaleCardColor = kIinactiveCardColor;
      } else {
        _maleCardColor = kIinactiveCardColor;
      }
    } else {
      if (_femaleCardColor == kIinactiveCardColor) {
        _femaleCardColor = kActiveCardColor;
        _maleCardColor = kIinactiveCardColor;
      } else {
        _femaleCardColor = kIinactiveCardColor;
      }
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ReusableCard(
                    color: (_selectedGender == Gender.male)
                        ? kActiveCardColor
                        : kIinactiveCardColor,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    onPress: (() {
                      setState(() {
                        _selectedGender = Gender.male;
                      });
                    }),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: (_selectedGender == Gender.female)
                        ? kActiveCardColor
                        : kIinactiveCardColor,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    onPress: (() {
                      setState(() {
                        _selectedGender = Gender.female;
                      });
                    }),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'HEIGHT',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: const [
                      Text(
                        '180',
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Expanded(
                  child: ReusableCard(color: kActiveCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: kActiveCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}
