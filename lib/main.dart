import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Dicee());
}

class Dicee extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicee',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red.shade900,
          titleTextStyle: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold
          )
        )
      ),
      home: DicePAge(),
    );
  }
}

class DicePAge extends StatefulWidget{
  @override
  State<DicePAge> createState() => _DicePAgeState();
}

class _DicePAgeState extends State<DicePAge> {
  int leftDice=1;

  int rightDice=1;

  void rollDice(){
    leftDice=Random().nextInt(6)+1;
    rightDice=Random().nextInt(6)+1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Dicee',
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          ),
        ),
      ),
      body: Container(
        color: Colors.red.shade900,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Image.asset('assets/images/dice$leftDice.jpg')
                  ),
                  Expanded(
                      child: Image.asset('assets/images/dice$rightDice.jpg')
                    ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                  onPressed: (){
                setState(() {
                  rollDice();
                });
              },
                  child: Text('Roll',
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.red
                    ) ,
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}