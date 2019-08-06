import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex ++;
    print(questionIndex);
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
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('data 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('data 2'),
              onPressed: () => print('Resposta 2'),
            ),
            RaisedButton(
              child: Text('data 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
