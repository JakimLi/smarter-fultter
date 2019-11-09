import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  bool _background = true;
  Suit _suit;
  String _value;

  final _values = [
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    'J',
    'Q',
    'K',
    'A'
  ];

  Card(Suit suit, String value) {
    _background = false;
    _suit = suit;
    _value = value.toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.grey[300],
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(-10.0, -10.0)),
        BoxShadow(
            color: Colors.grey[300],
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(10.0, 10.0))
      ]),
      child: Center(child: Image(image: AssetImage(cardImage()))),
    );
  }

  String cardImage() {
    var suit = _suit.toString().split('.')[1];
    return 'assets/cards/' +
        (_showBackground() ? 'background' : '$suit\_$_value') +
        '.png';
  }

  bool _showBackground() {
    return _background || !_values.contains(_value);
  }
}

enum Suit { clubs, diamonds, hearts, spades }
