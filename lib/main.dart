import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: const Color(0xFF112031),
      appBar: AppBar(
        backgroundColor: const Color(0xFF152D35),
        title: const Center(
          child: Text('Magic 8 Ball'),
        ),
      ),
      body: const MagicBallPage(),
    ),
  ));
}

class MagicBallPage extends StatefulWidget {
  const MagicBallPage({super.key});

  @override
  State<MagicBallPage> createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int ball = 1;

  void random() {
    ball = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            random();
          });
        },
        child: Image.asset('images/ball$ball.png'),
      ),
    );
  }
}
