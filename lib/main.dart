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
        body: Row(
          children: [
            Column(
              children: [
                Text('Column1'),
                RaisedButton(child: Text('Button1'), onPressed: null),
                RaisedButton(child: Text('Button2'), onPressed: null),
                RaisedButton(child: Text('Button3'), onPressed: null),
              ],
            ),
            Column(
              children: [
                Text('Column2'),
                RaisedButton(child: Text('Button1'), onPressed: null),
                RaisedButton(child: Text('Button2'), onPressed: null),
                RaisedButton(child: Text('Button3'), onPressed: null),
              ],
            )
          ],
        ),
      ),
    );
  }
}
