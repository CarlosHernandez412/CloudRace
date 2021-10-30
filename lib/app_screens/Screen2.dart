import 'package:flutter/material.dart';
import 'Screen3.dart';
import 'Screen2.dart';
import 'Screen1.dart';

//Where the quiz will begin

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
          child: Text('Navigate to the end page'),
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
      ),
    );
  }
}
