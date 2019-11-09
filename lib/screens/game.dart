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
    return Container(
        color: Colors.grey[200],
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 100.0),
                child: poker.Card(Suit.clubs, '3')),
            Container(
                margin: EdgeInsets.only(top: 30.0, right: 90.0),
                child: Center(
                    child: ButtonBar(children: [
                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.amber,
                    child: Text('开始'),
                    onPressed: () {},
                  ),
                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blueGrey,
                    child: Text('历史'),
                    onPressed: () {},
                  )
                ])))
          ],
        ));
  }
}
