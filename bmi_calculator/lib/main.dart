import 'package:flutter/material.dart';
import 'input_page.dart';
import 'IconTextFile.dart';
import 'Containerfile.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith
        (primaryColor: Color(0xFFA0E21)),

    );
  }
}