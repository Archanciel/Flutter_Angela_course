import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomContainerHeight = 80;
const Color bottomContainerColor = Color(0xFFEB1555);
const reusableCardColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ReusableCard(
                    color: reusableCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 60,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "MALE",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF808E98),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  child: ReusableCard(
                    color: reusableCardColor,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(color: reusableCardColor),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Expanded(
                  child: ReusableCard(color: reusableCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: reusableCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

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
