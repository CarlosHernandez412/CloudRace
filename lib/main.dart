import "package:flutter/material.dart";
import './app_screens/Screen1.dart';

void main() => runApp(new CloudRaceApp());

class CloudRaceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}
