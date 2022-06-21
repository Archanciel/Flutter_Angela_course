import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {Key? key, void Function()? onPressed, required IconData icon})
      : _onPressed=onPressed, _icon = icon,
        super(key: key);

  final IconData _icon;
  final void Function()? _onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(_icon),
      constraints: BoxConstraints(
        minWidth: 56.0,
        maxWidth: 56.0,
        minHeight: 56.0,
        maxHeight: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: _onPressed,
    );
  }
}
