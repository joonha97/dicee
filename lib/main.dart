import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftNum = 1;
  var rightNum = 1;

  void changeDiceFace() {
    leftNum = Random().nextInt(6) + 1;
    rightNum = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDiceFace();
                });
                print('Left button got pressed');
              },
              child: Image.asset('images/dice$leftNum.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (/* no params */) {
                setState(() {
                  changeDiceFace();
                });
                print('Right button got pressed');
              },
              child: Image.asset('images/dice$rightNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
