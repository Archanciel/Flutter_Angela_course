import 'package:flutter/material.dart';

class Screen0 extends StatelessWidget {
  /// Route zero
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Screen 0'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              child: const Text('Go To Screen 1'),
              onPressed: () {
                Navigator.pushNamed(context, '/screen1');
              },
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
              child: const Text('Go To Screen 2'),
              onPressed: () {
                Navigator.pushNamed(context, '/screen2');
              },
            ),
          ],
        ),
      ),
    );
  }
}
