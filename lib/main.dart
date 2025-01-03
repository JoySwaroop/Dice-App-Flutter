import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[300],
        appBar: AppBar(
          title: Text(
            'Dice App',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int RightDiceNumber = 1;

  void changeDiceFace() {
    leftDiceNumber = Random().nextInt(6) + 1;
    RightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  changeDiceFace();
                  setState(() {});
                },
                child: Image.asset('images/dice$leftDiceNumber.png')),
          ),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeDiceFace();
                    });
                  },
                  child: Image.asset('images/dice$RightDiceNumber.png'))),
        ],
      ),
    );
  }
}
