import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      if (kDebugMode) {
        print('Answer chosen!');
        _questionIndex =1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ]; // list of our questions

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Frontpage'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(
                onPressed: _answerQuestion, child: const Text('Answer 1')),
            ElevatedButton(
                onPressed: _answerQuestion, child: const Text('Answer 2')),
            ElevatedButton(
                onPressed: _answerQuestion, child: const Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}
