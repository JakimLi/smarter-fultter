import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smarter/widgets/card.dart' as poker;
import 'package:smarter/widgets/card.dart';

class Game extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return poker.Card(Suit.clubs, 'J');
  }
}
