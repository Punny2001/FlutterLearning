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

  var question = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
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
        ),
        body: Column(
          children: [
            Question(
              question[_questionIndex],
            ),
            Answer(_answerQuestion, 1),
            Answer(_answerQuestion, 2),
            Answer(_answerQuestion, 3),
          ],
        ),
      ),
    );
  }
}
