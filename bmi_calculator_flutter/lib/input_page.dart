import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final double containerHeightMax = screenHeight * 0.251;
    final double containerHeightMin = screenHeight * 0.21;
    final screenWidth = MediaQuery.of(context).size.width;
    final double containerWidth = screenWidth * 0.416;
    const Color containerBackgroundColor = Color(0xFF1D1E33);

    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: containerHeightMax,
                width: containerWidth,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: containerBackgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              Container(
                height: containerHeightMax,
                width: containerWidth,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: containerBackgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ],
          ),
          Container(
            height: containerHeightMin,
            width: screenWidth,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: containerBackgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: containerHeightMax,
                width: containerWidth,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: containerBackgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              Container(
                height: containerHeightMax,
                width: containerWidth,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: containerBackgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
