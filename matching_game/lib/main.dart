import 'package:flutter/material.dart';
import 'package:untitled16/homeScreen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body:
        SplashScreenView(
            navigateRoute:  HomeScreen(),
            duration: 10000,
            imageSize: 500,
            imageSrc: "assets/s.png",
            backgroundColor: Colors.blue,
            text: 'WELCOME LETS PLAY MATCHING GAME',textStyle:const TextStyle(fontSize: 20,color: Colors.black)
        ),
      ),
      title: 'Match Game',
    );
  }
}