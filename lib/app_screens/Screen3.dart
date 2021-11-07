import 'package:flutter/material.dart';
import 'Screen4.dart';

// Users joining a game will enter their name and
// enter gamecode then submit to enter waiting room

class Screen3 extends StatelessWidget {
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
