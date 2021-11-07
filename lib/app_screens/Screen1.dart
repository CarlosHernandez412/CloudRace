import 'package:flutter/material.dart';
import 'Screen2.dart';
import 'Screen3.dart';

// Homescreen where users can host/join a quiz

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Cloud Race'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              color: Colors.green,
              child: Text('Host Quiz'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Screen2();
                    },
                  ),
                );
              },
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text('Join Quiz'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Screen3();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
