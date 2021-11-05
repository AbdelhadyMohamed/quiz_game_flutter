import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled7/winner.dart';

import 'Loser.dart';

class HomeScreen extends StatefulWidget {
  static String Route_NAME = 'home_screen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int c_yes = 0;
  late int c_no = 0;
  List<String> questions = [
    'Have you ever wrote a letter?',
    'Have you ever smoked a cigarette?',
    'Have you ever had a fight with someone who was too old?',
    'Have you ever been on the radio or on television?',
    'Have you ever stayed awake for an entire night?',
    'Have you ever broken something, like a window, and ran away?',
    'Have you ever won a contest and received a prize?',
    'Have you ever met a famous person or a celebrity?',
  ];

  final random = new Random();

  void score_y() {
    c_yes++;
  }

  void score_n() {
    c_no++;
  }

  void check() {
    if (c_yes >= 4) {
      Navigator.pushReplacementNamed(context, Winner.Route_NAME);
    } else if (c_no >= 4) {
      Navigator.pushReplacementNamed(context, Loser.Route_NAME);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Have You Ever',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 35),
            child: Text(
              questions[random.nextInt(questions.length)],
              style: TextStyle(fontSize: 30),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                color: Colors.green[900],
                child: TextButton(
                  onPressed: () {
                    score_y();
                    check();
                    setState(() {});
                  },
                  child: Text(
                    'Yes',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Container(
                color: Colors.red[900],
                margin: EdgeInsets.only(top: 8),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextButton(
                  onPressed: () {
                    score_n();
                    check();
                    setState(() {});
                  },
                  child: Text(
                    'No',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
