import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Você é uma boa maravilhosa viu';
    } else if (resultScore <= 12) {
      resultText = 'Quem não tem defeito ne ?';
    } else if (resultScore <= 16) {
      resultText = 'Da pra aturar ainda';
    } else {
      resultText = 'JESUS !! você é estranho viu';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Resetar'),
            onPressed: resetHandler,
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
