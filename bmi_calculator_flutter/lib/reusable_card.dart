import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color _color;
  final Widget? _cardChild;

  const ReusableCard({required Color color, Widget? cardChild})
      : _color = color,
        _cardChild = cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: _color,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: _cardChild,
    );
  }
}
