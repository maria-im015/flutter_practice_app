import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  const Result(
      {Key? key, required this.resultScore, required this.resetHandler})
      : super(key: key);

  // getter function
  String get resultPhrase{
    var resultText;
    if (resultScore <= 8) {
      resultText = 'you are awesome';
    } else if (resultScore <= 12) {
      resultText = 'you are likeable';
    } else if (resultScore <= 16) {
      resultText = 'you are ok';
    } else if (resultScore > 17)
      resultText = 'you are a piece of bologna';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
            onPressed: () => resetHandler(), child: Text('Restart Quiz!')),
      ],
    );
  }
}