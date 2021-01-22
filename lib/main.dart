import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: BallPage(),
    ));

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Ball()),
      backgroundColor: Colors.indigo.shade600,
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('images/ball$ballNumber.png'),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(5) + 1;
              });
            },
            padding: const EdgeInsets.all(0.0),
            textColor: Colors.indigo.shade600,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.black),
            ),
            child: Container(
              padding: const EdgeInsets.all(15.0),
              child: Text('Ask me'),
            ),
          ),
        ],
      ),
    );
  }
}
