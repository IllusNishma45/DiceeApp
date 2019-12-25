import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(DiceMain());

class DiceMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

/*class DicePage extends StatelessWidget {
  var firstDiceImg = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  print("first button was pressed");
                }, //anonymous function
                child: Image.asset("images/dice$firstDiceImg.png")),
          ),
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    print("second button was pressed");
                  },
                  child: Image.asset("images/dice2.png"))),
        ],
      ),
    );
  }
}*/

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int firstDiceImg = 1;
  int secondDiceImg = 2;

  void ChangeDiceNumber() {
    setState(() {
      firstDiceImg = Random().nextInt(6) + 1;
      secondDiceImg = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  print("first button was pressed");
                  ChangeDiceNumber();
                }, //anonymous function
                child: Image.asset("images/dice$firstDiceImg.png")),
          ),
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    print("second button was pressed");
                    ChangeDiceNumber();
                  },
                  child: Image.asset("images/dice$secondDiceImg.png"))),
        ],
      ),
    );
  }
}
