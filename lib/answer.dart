import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function triggerFunc;
  final String btnName;

  Answer(this.triggerFunc, this.btnName);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: RaisedButton(
          color: Colors.blueAccent[700],
          textColor: Colors.white,
          child: Text(btnName),
          onPressed: triggerFunc,
        ));
  }
}
