import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  final Random _randomGenerator = Random();
  int _leftImageNumber = 1;
  int _rightImageNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$_leftImageNumber.png'),
              onPressed: () => _randomImages(),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$_rightImageNumber.png'),
              onPressed: () => _randomImages(),
            ),
          ),
        ],
      ),
    );
  }

  void _randomImages() {
    return setState(() {
              _leftImageNumber = _randomGenerator.nextInt(6) + 1;
              _rightImageNumber = _randomGenerator.nextInt(6) + 1;
            });
  }
}
