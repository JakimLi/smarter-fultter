import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smarter/screens/exam.dart';
import 'package:smarter/screens/game.dart';
import 'package:smarter/screens/settings.dart';
import 'package:smarter/screens/tips.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _current = 0;
  List<Widget> screens = [Game(), Exam(), Tips(), Settings()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Smarter'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _current,
          onTap: _onTabTapped,
          selectedItemColor: Colors.amber[800],
          unselectedItemColor: Colors.grey[900],
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.games), title: Text('挑战')),
            BottomNavigationBarItem(
                icon: Icon(Icons.desktop_mac), title: Text('测试')),
            BottomNavigationBarItem(icon: Icon(Icons.info), title: Text('提示')),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text('设置')),
          ],
        ));
  }

  void _onTabTapped(int index) {
    setState(() {
      _current = index;
    });
  }
}
