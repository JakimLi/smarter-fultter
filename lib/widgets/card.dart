import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  bool _background = true;
  Suit _suit;
  String _value;

  Card(Suit suit, String value) {
    _background = false;
    _suit = suit;
    _value = value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40.0),
      child: Image(image: AssetImage(cardImage())),
    );
  }

  String cardImage() {
    var suit = _suit.toString().split('.')[1];
    return 'assets/fancy/' + (_background ? 'background' : '$suit\_$_value') + '.jpg';
  }
}

enum Suit { clubs, diamonds, hearts, spades }
