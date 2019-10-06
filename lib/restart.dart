import 'package:flutter/material.dart';

class Restart extends StatelessWidget {
  final Function restartHandler;
  Restart(this.restartHandler);

  @override Widget build(BuildContext context) {
    return RaisedButton(onPressed: this.restartHandler, child: Text('Restart'),);
  }
}
