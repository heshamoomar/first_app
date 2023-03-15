import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function()? onPressed;

  //  constructor
  const Answer(this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue),
              foregroundColor: MaterialStatePropertyAll(Colors.white)),
          onPressed: onPressed,
          child: const Text('Answer 1')),
    );
  }
}
