import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: const Text('Dados'),
        backgroundColor: Colors.blue,
      ),
      body: const BallMagicPage(),
    ),
  ));
}

class BallMagicPage extends StatefulWidget {
  const BallMagicPage({super.key});

  @override
  State<BallMagicPage> createState() => _BallMagicPageState();
}

class _BallMagicPageState extends State<BallMagicPage> {
  var alterBallMagicNumber = 1;
  var random = Random();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: updateDie,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16),
              ),
              child: Image.asset(
                'images/ball$alterBallMagicNumber.png',
              ),
            ),
          ),
        ],
      ),
    );
  }

  int genRandomNumer() {
    return random.nextInt(5) + 1;
  }

  void updateDie() {
    setState(() {
      alterBallMagicNumber = genRandomNumer();
    });
  }
}