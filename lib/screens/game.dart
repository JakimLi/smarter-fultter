import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smarter/widgets/card.dart' as poker;

class Game extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GameState();
}

class _GameState extends State<Game> {
  bool _started = false;
  int _current = 0;
  List<poker.Card> _cards = [];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[200],
        child: Column(children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 100.0),
              child: _started ? _cards[_current] : poker.Card.back()),
          Container(
              margin: EdgeInsets.only(top: 30.0),
              child: _started
                  ? RaisedButton(
                      textColor: Colors.white,
                      color: Colors.amber,
                      child: Text('完成'),
                      onPressed: () {
                        setState(() {
                          _started = false;
                        });
                      },
                    )
                  : RaisedButton(
                      textColor: Colors.white,
                      color: Colors.amber,
                      child: Text('开始'),
                      onPressed: () => _shuffleCards(),
                    ))
        ]));
  }

  void _shuffleCards() {
    List<poker.Card> deck = poker.deck();
    List<poker.Card> cards = [];
    while (deck.length != 0) {
      var index = Random().nextInt(deck.length);
      cards.add(deck[index]);
      deck.removeAt(index);
    }
    setState(() {
      _cards = cards;
      _started = true;
    });
  }
}
