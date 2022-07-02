import 'package:bmi_calculator_flutter/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class MinusPlusValue extends StatelessWidget {
  int _weight;
  final String _label;
  final void Function() _onPressed;

  MinusPlusValue({
    required int weight,
    required String label,
    required parent,
    required void Function() onPressed,
  })  : _weight = weight,
        _label = label,
        _onPressed = onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          _label,
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
                _weight -= 1;
                _onPressed();
              },
              icon: Icons.remove,
            ),
            const SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              onPressed: () {
                _weight += 1;
                _onPressed();
              },
              icon: Icons.add,
            ),
          ],
        )
      ],
    );
  }
}
