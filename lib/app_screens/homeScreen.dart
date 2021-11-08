import 'package:flutter/material.dart';
import 'hostPage.dart';
import 'playerScreen.dart';

// Homescreen where users can host/join a quiz

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Cloud Race', textAlign: TextAlign.center),
      ),
      backgroundColor: Colors.lightBlue[100],
      body: Center(
        child: Column(
          children: <Widget>[
            Spacer(),
            Text(
              "Let's Play Trivia",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            RaisedButton(
              color: Colors.lightGreen,
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
              color: Colors.yellow,
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
