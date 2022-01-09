import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Dice game app'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(32.0),
              child: Row(
                children: [
                  Expanded(
                      child: Image.asset('image/dice$leftDice.png')
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                      child: Image.asset('image/dice$rightDice.png')
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            ButtonTheme(
                minWidth: 100.0,
                height: 60.0,
                child: RaisedButton(
                  color: Colors.orangeAccent,
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 45.0,
                  ),
                  onPressed: (){
                    setState(() {
                       leftDice = Random().nextInt(6)+1;
                       rightDice = Random().nextInt(6)+1;
                    });
                  },
                ),
            )
          ],
        ),
      ),
    );
  }
}
