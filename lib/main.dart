import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _score = 0;
  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _score += score;
    });
    print(_questionIndex);
    print(_score);
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': 'How are software bugs created?',
        'answers': [
          {'text': 'Computers deliberately create bugs', 'score': 0},
          {'text': 'Computers accidentaly create bugs', 'score': 5},
          {'text': 'Programmers accidentaly create bugs', 'score': 10},
          {'text': 'Programmers deliberately create bugs', 'score': 15}
        ]
      },
      {
        'questionText': 'A programmer must not...',
        'answers': [
          {'text': 'write buggy code', 'score': 15},
          {'text': 'write fancy code', 'score': 10},
          {'text': 'write funny code', 'score': 5},
          {'text': 'write code', 'score': 0}
        ]
      },
      {
        'questionText': 'Buglessly developed projects may include',
        'answers': [
          {'text': 'bugs', 'score': 0},
          {'text': 'every expected features', 'score': 5},
          {'text': 'every unexpected features', 'score': 10},
          {'text': 'sporadic unexpected features', 'score': 15}
        ]
      },
      {
        'questionText':
            'Tested code can only pass the tests.\nUntested code can',
        'answers': [
          {'text': 'crash and burn', 'score': 0},
          {'text': 'enable never-failing builds which is cool', 'score': 5},
          {'text': 'do anything', 'score': 15},
          {'text': 'start World War III', 'score': 10}
        ]
      },
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('How bugless are you?')),
            body: _questionIndex > (_questions.length - 1)
                ? Result()
                : Quiz(
                    answerQuestion: _answerQuestion,
                    questions: _questions,
                    questionIndex: _questionIndex)));
  }
}
