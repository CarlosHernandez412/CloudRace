import 'package:cloud_race/app_screens/Screen5.dart';
import 'package:flutter/material.dart';
import 'Screen5.dart';
import 'Screen1.dart';

// End Page - Results

class Screen6 extends StatelessWidget {
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
              child: Text('Play Again'),
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
            RaisedButton(
              color: Colors.red,
              child: Text('Quit'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Screen1();
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
