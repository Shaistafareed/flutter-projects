import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';


void main() {
  runApp (MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Match game',
      theme:ThemeData(
        primarySwatch: Colors.blue,

      ),
      home:HomeScreen(),
    );
  }
}