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
  Color _maleCardColor = kInactiveCardColor;
  Color _femaleCardColor = kInactiveCardColor;
  Gender? _selectedGender;
  int _height = 180;

  void _updateCardColor(Gender cardType) {
    if (cardType == Gender.male) {
      if (_maleCardColor == kInactiveCardColor) {
        _maleCardColor = kActiveCardColor;
        _femaleCardColor = kInactiveCardColor;
      } else {
        _maleCardColor = kInactiveCardColor;
      }
    } else {
      if (_femaleCardColor == kInactiveCardColor) {
        _femaleCardColor = kActiveCardColor;
        _maleCardColor = kInactiveCardColor;
      } else {
        _femaleCardColor = kInactiveCardColor;
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
                        : kInactiveCardColor,
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
                        : kInactiveCardColor,
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
                    children: [
                      Text(
                        _height.toString(),
                        style: kNumberTextStyle,
                      ),
                      const Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  Slider(
                      value: _height.toDouble(),
                      min: kSliderMinValue,
                      max: kSliderMaxValue,
                      activeColor: kSliderActiveColor,
                      inactiveColor: kSliderInactiveColor,
                      onChanged: (double newValue) {
                        _height = newValue.round();
                        setState(() {});
                      }),
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
