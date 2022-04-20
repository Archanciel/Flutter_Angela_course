import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'I Am Poor',
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        title: Text('I Am Poor'),
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/polar_night_2.jpg'),
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    ),
  ));
}
