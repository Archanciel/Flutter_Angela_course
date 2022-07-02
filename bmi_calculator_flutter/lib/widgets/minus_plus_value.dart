import 'package:bmi_calculator_flutter/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class MinusPlusValue extends StatefulWidget {
  int _weight;
  final String _label;
  final void Function(int value) _onPressed;

  MinusPlusValue({
    required int weight,
    required String label,
    required void Function(int value) onPressed,
  })  : _weight = weight,
        _label = label,
        _onPressed = onPressed;

  @override
  State<MinusPlusValue> createState() => _MinusPlusValueState(
        weight: _weight,
        label: _label,
        onPressed: _onPressed,
      );
}

class _MinusPlusValueState extends State<MinusPlusValue> {
  int _weight;
  final String _label;
  final void Function(int value) _onPressed;

  _MinusPlusValueState({
    required int weight,
    required String label,
    required void Function(int value) onPressed,
  })  : _weight = weight,
        _label = label,
        _onPressed = onPressed;

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
          widget._weight.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              onPressed: () {
                _weight -= 1;
                widget._onPressed(_weight);
              },
              icon: Icons.remove,
            ),
            const SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              onPressed: () {
                _weight += 1;
                widget._onPressed(_weight);
              },
              icon: Icons.add,
            ),
          ],
        )
      ],
    );
  }
}
