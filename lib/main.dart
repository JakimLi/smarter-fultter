import 'package:flutter/material.dart';
import 'package:smarter/screens/home.dart';

void main() => runApp(SmarterApp());

class SmarterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Smarter',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: Home());
  }
}
