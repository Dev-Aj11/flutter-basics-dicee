import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

// var diceImages = ['dice1', 'dice2', 'dice3', 'dice4', 'dice5', 'dice6'];

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // List<String> diceImages = ['dice1', 'dice2', 'dice3', 'dice4', 'dice5', 'dice6'];
  int leftDice = 1;
  int rightDice = 2;

  void _changeDiceNum() {
    // setState() will rerun build method & look for what
    // has changed. It will then redraw the entire screen with
    // incorporating the change made to a certain part
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                _changeDiceNum();
              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                _changeDiceNum();
              },
              child: Image.asset('images/dice$rightDice.png'),
            ),
          )
        ],
      ),
    );
  }
}
