import 'package:flutter/material.dart';
import 'input.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.green,
          scaffoldBackgroundColor: Colors.green,
          textTheme: TextTheme(
              bodyText1:TextStyle(color:Colors.white))
      ),
    );
  }
}

