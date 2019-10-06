import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  Result(this.score);

  String _resultFromScore(int score) {
    String result;
    if (score == 60) {
      result = "You are a true BUGLESS developer!";
    } else if (score < 60 && score >= 45) {
      result = "You\'re almost there!";
    } else if (score < 45 && score >= 30) {
      result = "Hm...you can do better.";
    } else if (score < 30 && score >= 15) {
      result = "Keep on learning. You still have a long way to go.";
    } else if (score < 15) {
      result = "Well...this is awkward. Are you even trying?";
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(_resultFromScore(score)));
  }
}
