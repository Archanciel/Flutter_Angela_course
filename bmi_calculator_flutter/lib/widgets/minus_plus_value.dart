import 'package:bmi_calculator_flutter/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class MinusPlusValue extends StatefulWidget {
  final int _value;
  final String _label;

  MinusPlusValue({
    required int value,
    required String label,
  })  : _value = value,
        _label = label;

  @override
  State<MinusPlusValue> createState() => _MinusPlusValueState(
        value: _value,
      );
}

class _MinusPlusValueState extends State<MinusPlusValue> {
  int _value;

  _MinusPlusValueState({
    required int value,
  }) : _value = value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget._label, // _label MinusPlusValue instance variable
          style: kLabelTextStyle,
        ),
        Text(
          _value.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              onPressed: () {
                setState(() {
                  _value--;
                });
              },
              icon: Icons.remove,
            ),
            const SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              onPressed: () {
                _value++;
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
