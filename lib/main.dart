import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalcApp());
}

class BMICalcApp extends StatelessWidget {
  const BMICalcApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('BMI Calculator')),
        body: const Center(child: Text('Hello World')),
      ),
    );
  }
}
