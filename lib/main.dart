import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Qual sua cor favorita?',
      'answers': [
        {'text': 'Preto', 'score': 10},
        {'text': 'Vermelho', 'score': 0},
        {'text': 'Azul', 'score': 1},
        {'text': 'Verde', 'score': 5}
      ]
    },
    {
      'questionText': 'Qual seu animal favorito?',
      'answers': [
        {'text': 'Pato', 'score': 10},
        {'text': 'Cachorro', 'score': 0},
        {'text': 'Gato', 'score': 1},
        {'text': 'Tartaruga', 'score': 5}
      ]
    },
    {
      'questionText': 'Qual seu estação do ano favorita?',
      'answers': [
        {'text': 'Inverno', 'score': 5},
        {'text': 'Outono', 'score': 1},
        {'text': 'Primavera', 'score': 1},
        {'text': 'Verão', 'score': 5}
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
    _questionIndex = 0;
    _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;

      if (_questionIndex <= _questions.length) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('The Quiz Show!'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
