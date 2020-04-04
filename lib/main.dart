import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: HomeScreen(),
      ),
    );

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask me Anything'),
      ),
      body: BallScreen(),
    );
  }
}

class BallScreen extends StatefulWidget {
  @override
  _BallScreenState createState() => _BallScreenState();
}

class _BallScreenState extends State<BallScreen> {
  int ballNumber = 5;

  void changeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/ball$ballNumber.png'),
              onPressed: () {
                changeBall();
              },
            ),
          ),
        ],
      ),
    );
  }
}
