import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(
    MaterialApp(
      home: BallPage()
    )

);
class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blue,
      appBar: AppBar(
        backgroundColor:Colors.purple,
        title: Text('Ask me Everything'),
        centerTitle: true,
        titleSpacing: 1.5,
      ),
      body: Ball(),
    );

  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber =1;
   void changeBall()
   {
     setState(() {
       ballNumber = Random().nextInt(4)+1;
     });
   }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Row(
        children: <Widget>[

          Expanded(
              child:FlatButton(
                  onPressed:(){
                   changeBall();
                  },
                  child:Image.asset('images/ball$ballNumber.png'),
              ),
          ),

        ],
      ),
    );
  }
}



