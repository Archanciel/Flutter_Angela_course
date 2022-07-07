import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  /// Route two
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Screen 2'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          ),
          child: const Text('Go Back Directly To Screen 0'),
          onPressed: () {
            //Navigator.pop(context); // go back to Screen 1. Simply use '<' on
                                      // AppBar !
            Navigator.popUntil(
                context,
                ModalRoute.withName(
                  '/',
                ));
          },
        ),
      ),
    );
  }
}
