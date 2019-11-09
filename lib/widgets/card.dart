import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
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

  Card.back() {
    _background = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Image(image: AssetImage(cardImage()))),
    );
  }

  String cardImage() {
    if (_showBackground()) {
      return 'assets/background.png';
    }

    var suit = _suit.toString().split('.')[1];
    return 'assets/cards/$suit\_$_value.png';
  }

  bool _showBackground() {
    return _background || !_values.contains(_value);
  }
}

enum Suit { clubs, diamonds, hearts, spades }
