import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State {
  var questionIndex = 0;

  var question = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print('Index: $questionIndex');
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
            Text(
              question[questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 is chosen!'),
            ),
            RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  // ...
                  print('Answer 3 is chosen!');
                }),
          ],
        ),
      ),
    );
  }
}
