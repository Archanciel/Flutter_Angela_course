import 'package:flutter/material.dart';
import 'package:navigation_flutter_demo/screens/screen0.dart';
import 'screens/screen0.dart';
import 'screens/screen1.dart';
import 'screens/screen2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // replaces home: !
      routes: { // Map defining keyed Routes
        '/': (context) => Screen0(),
        '/screen1': (context) => Screen1(),
        '/screen2': (context) => Screen2(),
      },
    );
  }
}
