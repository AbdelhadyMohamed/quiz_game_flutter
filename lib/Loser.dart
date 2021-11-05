import 'package:flutter/material.dart';

import 'home_screen.dart';

class Loser extends StatelessWidget {
  static String Route_NAME = 'Loser';
  Loser();

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
        children: [
          Image.asset('assets/loser.png'),
          Container(
            color: Colors.white38,
            margin: EdgeInsets.only(top: 20),
            child: Container(
              color: Colors.grey,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, HomeScreen.Route_NAME);
                },
                child: Text(
                  'Play Again',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
