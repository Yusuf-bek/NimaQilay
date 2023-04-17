import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nimaqilay/data/random_works.dart';

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: UniqueKey(),
      content: Container(
        color: Colors.green,
        height: 100,
        width: 100,
        child: Text(
          pickRandomWorks(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  String pickRandomWorks() {
    Random randomGenerator = Random();
    int randomIndex =
        randomGenerator.nextInt(RandomWorks.randomWorks.length - 1);

    return RandomWorks.randomWorks[randomIndex];
  }
}
