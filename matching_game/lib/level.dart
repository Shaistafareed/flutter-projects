import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
//import 'package:splash_screen_view/SplashScreenView.dart';
//import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Level(),

      title: ' Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      //home: MyHomePage(),
      // debugShowCheckedModeBanner: false,
    );
  }
}


class Level extends StatefulWidget {
  @override
  _LevelState createState() => _LevelState();
}
class _LevelState extends State<Level> {
  late List<ItemModel>items;
  late List<ItemModel>items2;
  int score=0;
  bool gameOver=false;
  initGame() {
    gameOver = false;
    score = 0;
    items = [
      ItemModel(value: 'ONE:1', name: 'ONE:1', img: 'assets/1.jpeg'),
      ItemModel(value: 'TWO:2', name: 'TWO:2', img: 'assets/2.png'),
      ItemModel(value: 'THREE:3', name: 'THREE:3', img: 'assets/3.jpeg'),
      ItemModel(value: 'FOUR:4', name: 'FOUR:4', img: 'assets/4.png'),
      ItemModel(value: 'FIVE:6', name: 'FIVE:6', img: 'assets/5.png'),
      ItemModel(value: 'THREE:7', name: 'THREE:7', img: 'assets/3.jpeg'),
      ItemModel(value: 'FOUR:8', name: 'FOUR:8', img: 'assets/4.png'),
      ItemModel(value: 'FIVE:9', name: 'FIVE:9', img: 'assets/5.png'),

    ];
    items2 = List<ItemModel>.from(items);

    items.shuffle();
    items2.shuffle();
  }

  @override
  void initState() {
    super.initState();
    initGame();
  }

  @override
  Widget build(BuildContext context) {
    if (items.length == 0) gameOver = true;
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Score: ',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      TextSpan(
                        text: '$score',
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              if (!gameOver)
                Row(
                  children: [
                    Spacer(),
                    Column(
                      children: items.map((item) {
                        return Container(
                          margin: EdgeInsets.all(8),
                          child: Draggable<ItemModel>(
                            data: item,
                            childWhenDragging: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(item.img),
                              radius: 60,
                            ),
                            feedback: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(item.img),
                              radius: 30,
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(item.img),
                              radius: 30,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    Spacer(flex: 2),
                    Column(
                      children: items2.map((item) {
                        return DragTarget<ItemModel>(
                          onAccept: (receivedItem) {
                            if (item.value == receivedItem.value) {
                              setState(() {
                                items.remove(receivedItem);
                                items2.remove(item);
                              });
                              score += 10;
                              item.accepting = false;
                              AssetsAudioPlayer.newPlayer().open(
                                Audio("assets/true.wav"),
                              );

                            } else {
                              setState(() {
                                score -= 5;
                                item.accepting = false;
                                item.accepting = false;
                                AssetsAudioPlayer.newPlayer().open(
                                  Audio("assets/faLse.wav"),
                                );


                              });
                            }
                          },
                          onWillAccept: (receivedItem) {
                            setState(() {
                              item.accepting = true;
                            });
                            return true;
                          },
                          onLeave: (receivedItem) {
                            setState(() {
                              item.accepting = false;
                            });
                          },
                          builder: (context, acceptedItems, rejectedItems) =>
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: item.accepting
                                        ? Colors.green[400]
                                        : Colors.green[200],
                                  ),
                                  alignment: Alignment.center,
                                  height:
                                  MediaQuery.of(context).size.width / 6.5,
                                  width: MediaQuery.of(context).size.width / 3,
                                  margin: EdgeInsets.all(8),
                                  child: Text(
                                    item.name,
                                    style:
                                    Theme.of(context).textTheme.headline6,
                                  )),
                        );
                      }).toList(),
                    ),
                    Spacer(),
                  ],
                ),
              if (gameOver)
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '',
                          style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.teal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          result(),
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                    ],
                  ),
                ),
              if (gameOver)
                Container(
                  height: MediaQuery.of(context).size.width / 10,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(8)),
                  child: TextButton(
                      onPressed: () {
                      setState(() {
                        initGame();
                      });
                      },
                      child: Text(
                        'Next Level',
                        style: TextStyle(color: Colors.white),
                      )),
                )
            ],
          ),
        ),
      ),
    );
  }

  //Functions:

  result() {
    if (score == 50 ) {


      return 'Level One Complete !';
    }else if(score <=50 ) {
      TextButton(
          onPressed: () {
            setState(() {
              initGame();
            });
          },
          child: Text(
            'Next Level',
            style: TextStyle(color: Colors.white),

          ));
    } else {

      return 'Play again to get better score';
    }
  }
}

class ItemModel {
  final String name;
  final String img;
  final String value;
  bool accepting;
  ItemModel({required this.name, required this.value, required this.img, this.accepting = false});
}
