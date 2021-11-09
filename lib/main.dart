import 'package:cloud_race/app_screens/quizQues.dart';

import './app_screens/homeScreen.dart';
import "package:flutter/material.dart";
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(CloudRaceApp());
}

class CloudRaceApp extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homescreen(),
    );
  }
}

//class MyHomePage extends StatelessWidget {
 // @override
  //Widget build(BuildContext context) {
    //return Scaffold(
      
   // );
 // }
//}
