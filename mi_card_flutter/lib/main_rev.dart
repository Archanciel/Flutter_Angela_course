import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mi_card/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                foregroundImage:
                    AssetImage('images/photo CV oct 2009 1297 x 1297.jpg'),
              ),
              Text(
                'Jean-Pierre Schnyder',
                style: TextStyle(
                    fontFamily: 'Courgette',
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'FLUTTER STUDENT',
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal.shade50,
                    fontSize: 20,
                    letterSpacing: 2.5),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone,
                      size: 27,
                      color: Colors.teal[800],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '+41 76 822 49 87',
                      style: TextStyle(fontSize: 20, color: Colors.teal[800]),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mail,
                      size: 27,
                      color: Colors.teal[800],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'jp.schnyder@gmail.com',
                      style: TextStyle(fontSize: 20, color: Colors.teal[800]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
