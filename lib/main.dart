import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text('Magic Ball'),
            backgroundColor: Colors.blueGrey[800],
          ),
          body: MagicBallPage(),
        ),
      ),
    );

class MagicBallPage extends StatefulWidget {
  const MagicBallPage({Key? key}) : super(key: key);

  @override
  _MagicBallPageState createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int magicBallNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            generateMagicBall();
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Image.asset('images/ball$magicBallNumber.png'),
        ),
      ),
    );
  }

  void generateMagicBall() {
    magicBallNumber = Random().nextInt(5) + 1;
  }
}
