import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color _color;
  final Widget? _cardChild;
  final void Function()? _onPress;

  const ReusableCard(
      {required Color color, Widget? cardChild, void Function()? onPress})
      : _color = color,
        _cardChild = cardChild,
        _onPress = onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: _color,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: _cardChild,
      ),
    );
  }
}
