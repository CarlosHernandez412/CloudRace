import "package:flutter/material.dart";
import 'package:cloud_race/app_screens/quizQues.dart';
import 'package:cloud_race/app_screens/ErrorScreen.dart';
import 'package:cloud_race/app_screens/hostPage.dart';
import 'package:cloud_race/app_screens/LoadingScreen.dart';
import './app_screens/homeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_race/services/database.dart';
import 'package:cloud_race/app_screens/result.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(CloudRaceApp());
}

class CloudRaceApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CloudRaceAppState();
  }
}

class _CloudRaceAppState extends State<CloudRaceApp> {
  final _questions = const [
    {
      'questionText': 'Q1. Who was the first Hybrid Car in America',
      'answers': [
        {'text': 'Toyota', 'score': -2},
        {'text': 'Nissan', 'score': -2},
        {'text': 'Honda', 'score': 10},
        {'text': 'Ford', 'score': -2},
      ],
    },
    {
      'questionText':
          'Q2. What is the name of the hit movie about an Ogre and his Donkey?',
      'answers': [
        {'text': 'Nemo', 'score': -2},
        {'text': 'Lilo and Stitch', 'score': -2},
        {'text': 'Ogre Tales', 'score': -2},
        {'text': 'Shrek', 'score': 10},
      ],
    },
    {
      'questionText': ' Q3. Which programing language is used by Flutter',
      'answers': [
        {'text': 'Ruby', 'score': -2},
        {'text': 'Dart', 'score': 10},
        {'text': 'C++', 'score': -2},
        {'text': 'Kotlin', 'score': -2},
      ],
    },
    {
      'questionText': 'Q4. Who created Dart programing language?',
      'answers': [
        {'text': 'Lars Bak and Kasper Lund', 'score': 10},
        {'text': 'Brendan Eich', 'score': -2},
        {'text': 'Bjarne Stroustrup', 'score': -2},
        {'text': 'Jeremy Ashkenas', 'score': -2},
      ],
    },
    {
      'questionText':
          'Q5. Is Flutter for Web and Desktop available in stable version?',
      'answers': [
        {
          'text': 'Yes',
          'score': -2,
        },
        {'text': 'No', 'score': 10},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('CloudRace'),
          backgroundColor: Color(0xFF00E676),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
/*class CloudRaceApp extends StatelessWidget {
  //final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //debugShowCheckedModeBanner: false,
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _fbApp,
        builder: (context, snapshot) {
          print('In Builder');
          if (snapshot.hasError) {
            print(snapshot.error?.toString());
            print('in Error block');
            return ErrorPage();
          }

          if (snapshot.connectionState == ConnectionState.done) {
            print("test");
            DatabaseService().getQuizData();
            return HomeScreen();
          }

          return LoadingScreen();
        });
  }
}
*/