import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'reusable_card.dart';
import 'icon_content.dart';

const double bottomContainerHeight = 80;
const Color bottomContainerColor = Color(0xFFEB1555);
const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color _maleCardColor = inactiveCardColor;
  Color _femaleCardColor = inactiveCardColor;
  Gender? _selectedGender;

  void _updateCardColor(Gender cardType) {
    if (cardType == Gender.male) {
      if (_maleCardColor == inactiveCardColor) {
        _maleCardColor = activeCardColor;
        _femaleCardColor = inactiveCardColor;
      } else {
        _maleCardColor = inactiveCardColor;
      }
    } else {
      if (_femaleCardColor == inactiveCardColor) {
        _femaleCardColor = activeCardColor;
        _maleCardColor = inactiveCardColor;
      } else {
        _femaleCardColor = inactiveCardColor;
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
                        ? activeCardColor
                        : inactiveCardColor,
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
                        ? activeCardColor
                        : inactiveCardColor,
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
          const Expanded(
            child: ReusableCard(color: activeCardColor),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Expanded(
                  child: ReusableCard(color: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
