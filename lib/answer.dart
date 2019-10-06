import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
            color: Colors.red[900],
            onPressed: selectHandler,
            child: Text(this.answerText, style: TextStyle(color: Colors.white))));
  }
}
