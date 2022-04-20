import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: const Text('I Am Rich'),
          centerTitle: true,
        ),
        body: const Center(
          child: Image(
            image: AssetImage(
                'images/diamond.png'),
            // height: double.infinity,
            // width: double.infinity,
            // fit: BoxFit.fill,
          ),
        ),
      ),
    ),
  );
}
