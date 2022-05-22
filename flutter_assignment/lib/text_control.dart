import 'package:flutter/material.dart';
import './text_output.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String _text = 'Hello';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(
          child: Text('Change Text'),
          onPressed: () {
            setState(() {
              _text = 'Welcome Home';
            });
          },
        ),
        TextOutput(_text),
      ],
    );
  }
}
