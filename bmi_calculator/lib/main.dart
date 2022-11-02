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
          primaryColor: Colors.black38,
          scaffoldBackgroundColor: Colors.black38,
          textTheme: TextTheme(
              bodyText1:TextStyle(color:Colors.black))
      ),
    );
  }
}

