import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText ;
  Question(this.questionText){

  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      margin: EdgeInsets.all(33),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 10),
        textAlign: TextAlign.center,
        ),
    ); 
  }
}