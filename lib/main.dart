import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import './question.dart';
import './answer.dart';


void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}
  
  class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  
  void _answerQuestion(){
      setState(() {
       _questionIndex = _questionIndex + 1 ; 
    });
   
    print(_questionIndex);
  }
  
  


  
  @override
  Widget build(BuildContext context) {
     
    var questions = [
      {'questionText':'What\'s your favorite colour?',
       'answers': ['Black','Red','Green','White'],
      },
       {'quesionText':'What\'s your favorite animal?',
       'answers':['Rabit','Snake','Elephent','Lion'],
      },
      {
        'questionText':'What\'s your favorite instructor?',
        'answers':['Oah','Max','Oah','Max']
      }
      ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children:[
          Question(
            questions[_questionIndex]['questionText'],
          ),
            ...(questions[_questionIndex]['answers']as List<String>)
             .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
         ],
         ),
      ),
    );
  }
}
