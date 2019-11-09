import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smarter/widgets/card.dart' as poker;
import 'package:smarter/widgets/card.dart';

class Game extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GameState();
}

class _GameState extends State<Game> {
  bool _started = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[200],
        child: Column(children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 100.0),
              child:
                  _started ? poker.Card(Suit.clubs, '3') : poker.Card.back()),
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
                      onPressed: () {
                        setState(() {
                          _started = true;
                        });
                      },
                    ))
        ]));
  }
}
