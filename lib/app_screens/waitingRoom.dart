import 'package:cloud_race/app_screens/result.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';
import 'question.dart';

// Waiting room, no button just a loading waiting room

class waitingRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Cloud Race'),
      ),
      backgroundColor: Colors.lightBlue[100],
      body: Center(
        child: RaisedButton(
          color: Colors.green,
          child: Text('Waiting for host to start...'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return MaterialApp(); //quiz();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
