import 'package:cloud_race/app_screens/Screen6.dart';
import 'package:flutter/material.dart';
import 'Screen5.dart';

// Waiting room, no button just a loading waiting room

class Screen4 extends StatelessWidget {
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
          child: Text('Waiting for host to start...'),
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
