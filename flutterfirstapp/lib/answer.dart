import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final int count;

  Answer(this.selectHandler, this.count);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue.shade900,
        textColor: Colors.white,
        child: Text('Answer $count'),
        onPressed: selectHandler,
      ),
    );
  }
}
