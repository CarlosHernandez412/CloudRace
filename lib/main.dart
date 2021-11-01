import './app_screens/Screen1.dart';
import "package:flutter/material.dart";
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(CloudRaceApp());
}

class CloudRaceApp extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Screen1(),
      //home: FutureBuilder(
      //future: _fbApp,
      //builder: (context, snapshot) {
      //if (snapshot.hasError) {
      //print ('You have an error: ${snapshot.error.toString()}');
      //return Text('Something went wrong!');
      //} else if (snapshot.hasData) {
      //return MaterialApp(title: 'Cloud Race');
      //} else {
      //return Center(
      //child: CircularProgressIndicator(),
      //);
      //}
      //},
      //));
      //}
//}
      home: Screen1(),
    );
  }
}
