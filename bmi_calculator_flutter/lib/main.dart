import 'package:bmi_calculator_flutter/screens/screen_result.dart';
import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  ThemeData _baseThemeData = ThemeData.dark();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _baseThemeData.copyWith(
        colorScheme: _baseThemeData.colorScheme.copyWith(
          secondary: Colors.purple,
        ),
        primaryColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
          centerTitle: true, // otherwise the appBar title is not centered !
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      initialRoute: '/', // replaces home: !
      routes: {
        // Map defining keyed Routes
        '/': (context) => InputPage(),
        '/screenResult': (context) => ScreenResult(),
      },
    );
  }
}
