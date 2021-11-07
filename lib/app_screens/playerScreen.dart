import 'package:flutter/material.dart';
import 'waitingRoom.dart';

// Users joining a game will enter their name and
// enter gamecode then submit to enter waiting room

class Screen3 extends StatelessWidget {
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
          child: Text('Enter waiting room'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Screen4();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
