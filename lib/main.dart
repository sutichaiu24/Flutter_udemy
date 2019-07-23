import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}
  
  class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  
  void answerQuestion(){
      setState(() {
       questionIndex = questionIndex + 1 ; 
    });
   
    print(questionIndex);
  }
  void reset(){
      setState(() {
        questionIndex = 0;
      });
  }
  
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite colour?',
      'What\'s your favorite animatl?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children:[
          Question(
            questions[questionIndex],
          ),
          RaisedButton(
            child: Text('Answer 1'), 
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: () => print('Answer 2 chosen!'),
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed:(){
              print('Answer 3 chosen');
            }
          ),
          RaisedButton(
          child: Text('Reset'),
          onPressed: reset,
          )
        ]),
      ),
    );
  }
}
