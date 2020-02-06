import "package:flutter/material.dart";

import './text_output.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String _words = 'Change Me';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextOutput(_words),
        RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () {
            setState(() {
              _words = 'I\'ve Changed!';
            });
          },
          child: Text('Change Text'),
        )
      ],
    );
  }
}
