import 'package:flutter/material.dart';

void main() {
  // runs flutter app
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // build is a method and BuildContext is the argument and special object type
  Widget build(BuildContext context) {
    //MaterialApp is a class
    return MaterialApp(
      home: Text('Hello!'),
    );
  }
}
