import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _columnIndex = 0;

  void buttonPressed1() {
    setState(() {
      _columnIndex = _columnIndex + 1;
    });

    print(_columnIndex);
  }

  void buttonPressed2() {
    setState(() {
      _columnIndex = _columnIndex - 1;
    });
    print(_columnIndex);
  }

  void resetBtn() {
    setState(() {
      _columnIndex = 0;
    });
    print(-_columnIndex);
  }

  @override
  Widget build(BuildContext context) {
    var columnName = [
      {
        'questions': 'How do you do?',
        'answer': ['Doing well', 'Fine', 'Not good'],
      },
      {
        'questions': 'What\'s the question?',
        'answer': ['How do you do?', 'What??', 'You heard me right?'],
      },
      {
        'questions': 'Where am I?',
        'answer': ['In the office', 'Home', 'Somewhere'],
      },
      {
        'questions': 'Who are you?',
        'answer': ['Your Friend', 'You', 'Somebody'],
      },
    ];
    // [
    //   'How do you do?',
    //   'What\'s the question?',
    //   'Where am I?',
    //   'Who are you?'
    // ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: Column(
          children: [
            Question(columnName[_columnIndex]['questions']),
            Answer(buttonPressed1, 'Next'),
            Answer(buttonPressed2, 'Back'),
            Answer(resetBtn, 'Reset'),
          ],
        ),
      ),
    );
  }
}
