import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final controller = new TextEditingController();
  List<String> wordList = ['House', 'Tree', 'Kitchen', 'Computer', 'System'];
  Random random = new Random();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test your typing speed'.toUpperCase()),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text('Type the word in 5 seconds',
                style: TextStyle(
                  fontSize: 20,
                )),
            Container(
              child: Text('',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800)),
            ),
            Container(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: controller,
                  style: TextStyle(fontSize: 23),
                  decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      fillColor: Colors.black26,
                      filled: true),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Score:',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w800),
                  ),
                  Text('Time left:',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w800))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
