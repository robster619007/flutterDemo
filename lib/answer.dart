import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function triggerFunc;
<<<<<<< HEAD
  String btnName;
=======
  final String btnName;
>>>>>>> tester2

  Answer(this.triggerFunc, this.btnName);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: RaisedButton(
          color: Colors.blueAccent[700],
<<<<<<< HEAD
=======
          textColor: Colors.white,
>>>>>>> tester2
          child: Text(btnName),
          onPressed: triggerFunc,
        ));
  }
}
