import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "Qual minha cor favorita ?",
      'Qual meu animal favorito ?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu Primo'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('data 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('data 2'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('data 3'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
