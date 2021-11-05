import 'package:flutter/material.dart';

import 'home_screen.dart';

class Winner extends StatelessWidget {
  static String Route_NAME = 'state';
  Winner();

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
          Image.asset('assets/winner.png'),
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
