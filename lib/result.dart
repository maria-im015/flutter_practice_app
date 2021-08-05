import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  // getter function
  String get resultPhrase{
    var resultText;
    if (resultScore <= 8) {
      resultText = 'you are awesome';
    } else if (resultScore <= 12) {
      resultText = 'you are likeable';
    } else if (resultScore <= 16) {
      resultText = 'you are ok';
    } else {
      resultText = 'you are meh';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        // called here 
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ), 
    );
  }
}