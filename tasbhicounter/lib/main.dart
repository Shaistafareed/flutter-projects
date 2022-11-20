import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'home.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
          body:
          SplashScreenView(
            navigateRoute: home(),
            duration: 4000,
            imageSize: 200,
            imageSrc: "images/small.png",
            backgroundColor: Colors. blueGrey[600],
            text: 'بسم الله الرحمن الرحيم',textStyle:TextStyle(fontSize: 50,color: Colors.black),
          ),
        )
    );
  }
}







