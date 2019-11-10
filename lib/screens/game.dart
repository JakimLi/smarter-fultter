import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smarter/widgets/card.dart' as poker;
import 'package:swipedetector/swipedetector.dart';

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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  child:
                      Text('${_started ? _current + 1 : 0}/${_cards.length}')),
              Container(
                  child: _started
                      ? SwipeDetector(
                          onSwipeLeft: _next,
                          onSwipeRight: _last,
                          child: _cards[_current])
                      : poker.Card.back()),
              Container(
                  child: _started
                      ? RaisedButton(
                          textColor: Colors.white,
                          color: Colors.amber,
                          child: Text('完成'),
                          onPressed: _finish)
                      : RaisedButton(
                          textColor: Colors.white,
                          color: Colors.amber,
                          child: Text('开始'),
                          onPressed: _shuffleCards,
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

  void _next() {
    setState(() {
      if (_current == _cards.length - 1) {
        return;
      }
      setState(() {
        _current += 1;
      });
    });
  }

  void _last() {
    if (_current == 0) {
      return;
    }
    setState(() {
      _current -= 1;
    });
  }

  void _finish() {
    setState(() {
      _current = 0;
      _started = false;
      _cards = [];
    });
  }
}
