import 'package:bmi_calculator_flutter/widgets/minus_plus_value.dart';
import 'package:bmi_calculator_flutter/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator_flutter/widgets/constants.dart';
import '../widgets/reusable_card.dart';
import '../widgets/icon_content.dart';

enum Gender { male, female }

class ScreenResult extends StatefulWidget {
  @override
  _ScreenResultState createState() => _ScreenResultState();
}

class _ScreenResultState extends State<ScreenResult> {
  Color _maleCardColor = kInactiveCardColor;
  Color _femaleCardColor = kInactiveCardColor;
  Gender? _selectedGender;
  int _height = 180;
  //int _weight = 60;

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
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: kSliderInactiveColor,
                      activeTrackColor: kSliderActiveColor,
                      thumbColor: kSliderThumbColor,
                      overlayColor: kSliderOverlayColor,
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                        value: _height.toDouble(),
                        min: kSliderMinValue,
                        max: kSliderMaxValue,
                        onChanged: (double newValue) {
                          _height = newValue.round();
                          setState(() {});
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: MinusPlusValue(
                      value: 60,
                      label: 'WEIGHT',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: MinusPlusValue(
                      value: 19,
                      label: 'AGE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomContainerHeight,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              child: const Text(
                'RE-CALCULATE',
                style: kButtonTextStyle,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
