import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: Column(
          children: [
            Text('Flutter Demo within the column'),
            RaisedButton(
              child: Text('Button1'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Button2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Button3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
