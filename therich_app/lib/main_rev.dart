import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Rich App',
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('I Am Rich'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: const [
              Image(
                image: AssetImage('images/polar_night_2.jpg'),
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Image(
                image: AssetImage(
                  'images/diamond.png',
                ),
                height: 220,
                width: 220,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
