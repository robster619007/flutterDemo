import 'package:flutter/material.dart';
import './questions.dart';

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
    print('Column 2 pressed');
  }

  @override
  Widget build(BuildContext context) {
    var columnName = ['Column 1', 'column 1', 'col1', 'COLUMN ONE'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: Row(
          children: [
            Column(
              children: [
                Text(columnName[_columnIndex]),
                RaisedButton(child: Text('Button1'), onPressed: buttonPressed1),
                RaisedButton(
                    child: Text('Button2'),
                    onPressed: () => print('btn 2 for col 1 clicked')),
                RaisedButton(
                    child: Text('Button3'),
                    onPressed: () {
                      print('btn3 for col1 clicked');
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
