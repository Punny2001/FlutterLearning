import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    print('Index: $_questionIndex');
    if (_questionIndex < _questions.length) {
      print('We have more question');
    }
  }

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 3},
        {'text': 'Pink', 'score': 8},
        {'text': 'Red', 'score': 5}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 7},
        {'text': 'Bird', 'score': 5},
        {'text': 'Fish', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite mobile hone?',
      'answers': [
        {'text': 'iPhone', 'score': 8},
        {'text': 'Samsung', 'score': 5},
        {'text': 'Huawei', 'score': 4},
        {'text': 'Oppo', 'score': 2}
      ],
    },
  ];

  @override // to make our code more clear and clean
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Scaffold is to generate automatically page
        appBar: AppBar(
          title: Text('My first app'),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
