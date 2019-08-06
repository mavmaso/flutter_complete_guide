import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu Primo'),
        ),
        body: Column(
          children: [
            Text('Pergunta'),
            RaisedButton(
              child: Text('data 1'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('data 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('data 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
