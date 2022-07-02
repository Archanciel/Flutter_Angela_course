import 'package:bmi_calculator_flutter/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class MinusPlusValue extends StatefulWidget {
  int _weight;
  final String _label;

  MinusPlusValue({
    required int weight,
    required String label,
  })  : _weight = weight,
        _label = label;

  @override
  State<MinusPlusValue> createState() => _MinusPlusValueState(
        weight: _weight,
        label: _label,
      );
}

class _MinusPlusValueState extends State<MinusPlusValue> {
  int _weight;
  final String _label;

  _MinusPlusValueState({
    required int weight,
    required String label,
  })  : _weight = weight,
        _label = label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget._label,
          style: kLabelTextStyle,
        ),
        Text(
          _weight.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              onPressed: () {
                print(_weight);
                setState(() {
                  _weight -= 1;
                });
                print(_weight);
              },
              icon: Icons.remove,
            ),
            const SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              onPressed: () {
                _weight += 1;
                setState(() {});
              },
              icon: Icons.add,
            ),
          ],
        )
      ],
    );
  }
}
