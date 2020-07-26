import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var columnIndex = 0;

  void buttonPressed1() {
    setState(() {
      columnIndex = columnIndex + 1;
    });

    print(columnIndex);
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
                Text(columnName[columnIndex]),
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
            Column(
              children: [
                Text('Column2'),
                RaisedButton(child: Text('Button1'), onPressed: buttonPressed2),
                RaisedButton(
                    child: Text('Button2'),
                    onPressed: () => print('btn 2 for col 2 clicked')),
                RaisedButton(
                    child: Text('Button3'),
                    onPressed: () {
                      print('btn3 for col2 clicked');
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
