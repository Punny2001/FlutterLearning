import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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

  var questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Blue', 'Pink', 'Red'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Dog', 'Cat', 'Bird', 'Fish'],
    },
    {
      'questionText': 'What\'s your favorite mobile hone?',
      'answers': ['iPhone', 'Samsung', 'Huawei', 'Oppo'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print('Index: $_questionIndex');
  }

  @override // to make our code more clear and clean
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Scaffold is to generate automatically page
        appBar: AppBar(
          title: Text('My first app'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'] as String,
            ),
            ...(questions[_questionIndex]['answers'] as List<
                    String>) // ... makes separating list into a value of a list, then take it into child list.
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
