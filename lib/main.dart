import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
      title: "Cloud Race",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cloud Race"),
        ),
        body: Material(
          color: Colors.blueGrey,
          child: Center(
            child: Text(
              "Trivia Quiz",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.white, fontSize: 40.0),
            ),
          ),
        ),
      )));
}
