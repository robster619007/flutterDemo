import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void buttonPressed1() {
    print('Column1 pressed');
  }

  void buttonPressed2() {
    print('Column 2 pressed');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: Row(
          children: [
            Column(
              children: [
                Text('Column1'),
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
