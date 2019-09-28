import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballImageNumber = 1;

  void randomise() {
    setState(() {
      ballImageNumber = (Random().nextInt(5) + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: randomise,
        child: Image.asset(
          "images/ball$ballImageNumber.png",
          width: 300.0,
        ),
      ),
    );
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text("Ask Me Anything"),
        ),
        backgroundColor: Colors.blue,
        body: Ball());
  }
}
