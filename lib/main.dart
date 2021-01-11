import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Not your Average Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

//class DicePage extends StatelessWidget {
////  int leftDiceNumber =6;
////  @override
////  Widget build(BuildContext context) {
////
////    return Center(
////      child: Row(
////        children: <Widget>[
////          Expanded(
////            //flex: 12,
////            //Below Image.asset is a new constructor simplified
////            child: FlatButton(
////              onPressed: (){
////                print('LEFT BUTTON PRESSED');
////              },
////              child: Image.asset(
////                'images/dice$leftDiceNumber.png',
////              ),
////            ),
////          ),
////          Expanded(
////            //flex:5,
////            //Below method is the longer method
////            child: FlatButton(
////              onPressed: (){
////              print('RIGHT BUTTON PRESSED');
////              },
////              child: Image(
////                //width: 50.0, Not good as hardcoded instead uses Expanded Widget
////                image: AssetImage('images/dice1.png'),
////              ),
////            ),
////          ),
////        ],
////      ),
////    );
////  }
//}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //flex: 12,
            //Below Image.asset is a new constructor simplified
            child: FlatButton(
              onPressed: () {
                SetDiceNumbers();
                //leftDiceNumber=Random().nextInt(6)+1;
                //rightDiceNumber=Random().nextInt(6)+1;
              
              },
              child: Image.asset(
                'images/dice$leftDiceNumber.png',
              ),
            ),
          ),
          Expanded(
            //flex:5,
            //Below method is the longer method
            child: FlatButton(
              onPressed: () {
                SetDiceNumbers();
                //leftDiceNumber=Random().nextInt(6)+1;
                //rightDiceNumber=Random().nextInt(6)+1;
              },
              child: Image(
                //width: 50.0, Not good as hardcoded instead uses Expanded Widget
                image: AssetImage('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void SetDiceNumbers() {
    setState(() {
      leftDiceNumber = Random().nextInt(8) + 1;
      rightDiceNumber = Random().nextInt(8) + 1;
//      if((leftDiceNumber==7 && rightDiceNumber==8) && (leftDiceNumber==8 && rightDiceNumber==7) ){
//
//      });
  }
}
