import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Card extends StatelessWidget {
  bool _back = true;
  Suit _suit;
  String _value;

  static final _values = [
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
    _back = false;
    _suit = suit;
    _value = value.toUpperCase();
  }

  Card.back() {
    _back = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Image(image: AssetImage(cardImage()))),
    );
  }

  String cardImage() {
    if (_showBack()) {
      return 'assets/back.png';
    }

    var suit = _suit.toString().split('.')[1];
    return 'assets/cards/$suit\_$_value.png';
  }

  bool _showBack() {
    return _back || !_values.contains(_value);
  }
}

List<Card> deck() {
  List<Card> cards = [];
  for (Suit suit in Suit.values) {
    for (String value in Card._values) {
      cards.add(Card(suit, value));
    }
  }
  return cards;
}

enum Suit { clubs, diamonds, hearts, spades }
