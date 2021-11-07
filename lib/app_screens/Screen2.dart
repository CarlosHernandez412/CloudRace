import 'package:flutter/material.dart';
import 'Screen5.dart';

// Host enters their name, selects a quiz, and can start the quiz button
// Later - Be able to view those in waiting room

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Cloud Race'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.green,
          child: Text('Start Quiz'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Screen5();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
