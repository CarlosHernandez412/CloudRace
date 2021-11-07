import 'package:flutter/material.dart';
import 'Screen6.dart';

// The Quiz - Quiz Questions page

class Screen5 extends StatelessWidget {
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
