import 'package:flutter/material.dart';

import 'constants.dart';

class IconContent extends StatelessWidget {
  final IconData _icon;
  final String _label;

  const IconContent({
    required IconData icon,
    String label = '',
  })  : _icon = icon,
        _label = label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          _icon,
          size: iconSize,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          _label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
