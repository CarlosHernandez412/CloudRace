import 'package:flutter/material.dart';
import 'results.dart';

// The Quiz - Quiz Questions page

class Screen5 extends StatelessWidget {
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
          child: Text('Navigate to the end page'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Screen6();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}