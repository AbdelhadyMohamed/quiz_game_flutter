import 'package:flutter/material.dart';
import 'package:untitled7/home_screen.dart';
import 'package:untitled7/winner.dart';

import 'Loser.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'quiz game',
      routes: {
        HomeScreen.Route_NAME: (context) => HomeScreen(),
        Winner.Route_NAME: (context) => Winner(),
        Loser.Route_NAME: (context) => Loser(),
      },
      initialRoute: HomeScreen.Route_NAME,
    );
  }
}
