import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.casino,
            color: Colors.red,
            size: 30.0,
          ),
          title: Center(
              child: Text(
            'Dicee',
            style: TextStyle(color: (Colors.black)),
          )),
        ),
        body: DicePage(),
      ),
      title: 'Dice',
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice=1;
  void diceFace(){
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice =Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                  onPressed: () {
                    diceFace();
                  },
                  child:
                  Image.asset('images/$leftDice.png', color: Colors.green)),
            ),
          ),
          Container(
            color: Colors.blueGrey,
            width: 5.0,
            child: Divider(
              height: 100.0,
              thickness: 10.0,
              color: Colors.blueGrey,
              indent: 20,
              endIndent: 20,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                  onPressed: () {
                    diceFace();
                  },

                    child: Image.asset(
                      'images/$rightDice.png',
                      color: Colors.red,
                    ),
                  )),
            ),

        ],
      ),
    );
  }
}