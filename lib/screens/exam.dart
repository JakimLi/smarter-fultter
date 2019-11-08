import 'package:flutter/cupertino.dart';

class Exam extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ExamState();
}

class _ExamState extends State<Exam> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("In Exam"));
  }
}
