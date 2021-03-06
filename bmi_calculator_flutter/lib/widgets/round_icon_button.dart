import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData _icon;
  final void Function() _onPressed;

  const RoundIconButton({
    Key? key,
    required void Function() onPressed,
    required IconData icon,
  })  : _onPressed = onPressed,
        _icon = icon,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(_icon),
      constraints: const BoxConstraints(
        minWidth: 56.0,
        maxWidth: 56.0,
        minHeight: 56.0,
        maxHeight: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      onPressed: _onPressed,
    );
  }
}
