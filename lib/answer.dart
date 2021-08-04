import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText); 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler(),
        child: Text(answerText),
        style: ElevatedButton.styleFrom(
          primary: Colors.pinkAccent, 
          onPrimary: Colors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),)
        ),
      ),
    );
  }
}