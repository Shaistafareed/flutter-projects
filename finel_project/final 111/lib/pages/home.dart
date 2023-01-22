import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:middddd/pages/results.dart';

import 'login_page.dart';

int remaining_try = 0;
int correct_answer = 0;

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int number1 = 0;
  int number2 = 0;
  int number3 = 0;
  int number4 = 0;
  int a = 0;
  int b = 0;
  int c = 0;
  int d = 0;
  int number5 = 0;
  int total_chances = 2;

  bool check_number = false;
  final TextEditingController email = TextEditingController(text: "100");
  final TextEditingController password = TextEditingController(text: "200");
  final _formKey = GlobalKey<FormState>();
  bool generateNumber = false;
  bool correct = false;
  bool wrong = false;
  bool gen = false;
  bool newgen = false;
  bool screenchange = false;
  User? current = FirebaseAuth.instance.currentUser;
  bool dd = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.black,
            ),
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Theme.of(context).primaryColor,
                Theme.of(context).accentColor,
              ])),
        ),
      ),
      body: SingleChildScrollView(
        child: screenchange == false
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  generateNumber == false
                      ? Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                              ),
                              Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(8)),
                                child: MaterialButton(
                                    child: Text('Genrate Number',
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.black)),
                                    onPressed: () async {
                                      Random random = new Random();
                                      number1 = random.nextInt(200 - 100);
                                      print(number1);
                                      Random random2 = new Random();
                                      number2 = random2.nextInt(200 - 100);
                                      print(number2);
                                      Random random3 = new Random();
                                      number3 = random3.nextInt(200 - 100);
                                      print(number3);
                                      Random random4 = new Random();
                                      number4 = random4.nextInt(200 - 100);
                                      print(number4);
                                      Random random5 = new Random();
                                      number5 = random5.nextInt(5 - 0);
                                      print(number4);
                                      setState(() {
                                        generateNumber = true;
                                      });
                                      setState(() {
                                        total_chances = 2;
                                      });
                                      check_number = true;

                                      if (number5 == 1) {
                                        setState(() {
                                          a = number2;
                                          b = number4;
                                          c = number1;
                                          d = number3;
                                        });
                                      }
                                      if (number5 == 2) {
                                        setState(() {
                                          a = number4;
                                          b = number2;
                                          c = number3;
                                          d = number1;
                                        });
                                      }
                                      if (number5 == 4) {
                                        setState(() {
                                          a = number1;
                                          b = number2;
                                          c = number4;
                                          d = number3;
                                        });
                                      }
                                      if (number5 == 3) {
                                        setState(() {
                                          a = number4;
                                          b = number1;
                                          c = number2;
                                          d = number3;
                                        });
                                      }
                                      ;
                                    } // Code to execute when the button is pressed

                                    ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                "Range: 100 to 200",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(
                                height: 100,
                              ),
                              Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(8)),
                                child: MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ShowAllRecord()));
                                  },
                                  child: Text('Show Results',
                                      style: TextStyle(
                                          fontSize: 22, color: Colors.black)),
                                ),
                              ),
                            ],
                          ),
                        )
                      : SizedBox(
                          height: 0,
                        ),
                  generateNumber == true
                      ? Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          'Chances',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Text(
                                          '$total_chances',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 40, right: 40),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      height: 70,
                                      width: 150,
                                      child: MaterialButton(
                                        child: Text('$a',
                                            style: TextStyle(fontSize: 24)),
                                        // Black foreground color
                                        onPressed: () {
                                          if (check_number == true) {
                                            if (total_chances > 0) {
                                              if (a == number1) {
                                                correct_answer++;

                                                setState(() {
                                                  correct = true;
                                                  remaining_try++;
                                                  check_number = false;

                                                  number1 = 0;
                                                  number2 = 0;
                                                  number3 = 0;
                                                  number4 = 0;
                                                  a = 0;
                                                  b = 0;
                                                  c = 0;
                                                  d = 0;
                                                  number5 = 0;
                                                  total_chances = 2;
                                                });
                                              } else if (a != number1 &&
                                                  total_chances == 2) {
                                                setState(() {
                                                  total_chances--;
                                                  wrong = true;
                                                });
                                              } else if (total_chances == 1 &&
                                                  a != number1) {
                                                setState(() {
                                                  remaining_try++;
                                                  total_chances--;
                                                  wrong = true;
                                                });
                                              }
                                            } else {
                                              setState(() {
                                                gen = true;
                                              });
                                            }
                                          } else {
                                            setState(() {
                                              newgen = true;
                                            });
                                          }
                                          // Code to execute when the button is pressed
                                        },
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 70,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: MaterialButton(
                                        child: Text('$b',
                                            style: TextStyle(fontSize: 24)),
                                        // Black foreground color
                                        onPressed: () {
                                          if (check_number == true) {
                                            if (total_chances > 0) {
                                              if (b == number1) {
                                                correct_answer++;

                                                setState(() {
                                                  remaining_try++;
                                                  correct = true;
                                                  check_number = false;

                                                  number1 = 0;
                                                  number2 = 0;
                                                  number3 = 0;
                                                  number4 = 0;
                                                  a = 0;
                                                  b = 0;
                                                  c = 0;
                                                  d = 0;
                                                  number5 = 0;
                                                  total_chances = 2;
                                                });
                                              } else if (b != number1 &&
                                                  total_chances == 2) {
                                                setState(() {
                                                  total_chances--;
                                                  wrong = true;
                                                });
                                              } else if (total_chances == 1 &&
                                                  b != number1) {
                                                setState(() {
                                                  remaining_try++;
                                                  total_chances--;
                                                  wrong = true;
                                                });
                                              }
                                            } else {
                                              setState(() {
                                                gen = true;
                                              });
                                            }
                                          } else {
                                            setState(() {
                                              newgen = true;
                                            });
                                          }
                                          // Code to execute when the button is pressed
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 40, right: 40),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      height: 70,
                                      width: 150,
                                      child: MaterialButton(
                                        child: Text('$c',
                                            style: TextStyle(fontSize: 24)),
                                        // Black foreground color
                                        onPressed: () {
                                          if (check_number == true) {
                                            if (total_chances > 0) {
                                              if (c == number1) {
                                                correct_answer++;

                                                setState(() {
                                                  remaining_try++;

                                                  correct = true;

                                                  check_number = false;

                                                  number1 = 0;
                                                  number2 = 0;
                                                  number3 = 0;
                                                  number4 = 0;
                                                  a = 0;
                                                  b = 0;
                                                  c = 0;
                                                  d = 0;
                                                  number5 = 0;
                                                  total_chances = 2;
                                                });
                                              } else if (c != number1 &&
                                                  total_chances == 2) {
                                                setState(() {
                                                  total_chances--;
                                                  wrong = true;
                                                });
                                              } else if (total_chances == 1 &&
                                                  c != number1) {
                                                setState(() {
                                                  remaining_try++;
                                                  total_chances--;
                                                  wrong = true;
                                                });
                                              }
                                            } else {
                                              setState(() {
                                                gen = true;
                                              });
                                            }
                                          } else {
                                            setState(() {
                                              newgen = true;
                                            });
                                          }
                                          // Code to execute when the button is pressed
                                        },
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      height: 70,
                                      width: 150,
                                      child: MaterialButton(
                                        child: Text('$d',
                                            style: TextStyle(fontSize: 24)),
                                        // Black foreground color
                                        onPressed: () {
                                          if (check_number == true) {
                                            if (total_chances > 0) {
                                              if (d == number1) {
                                                correct_answer++;

                                                setState(() {
                                                  remaining_try++;
                                                  check_number = false;
                                                  correct = true;

                                                  number1 = 0;
                                                  number2 = 0;
                                                  number3 = 0;
                                                  number4 = 0;
                                                  a = 0;
                                                  b = 0;
                                                  c = 0;
                                                  d = 0;
                                                  number5 = 0;
                                                  total_chances = 2;
                                                });
                                              } else if (d != number1 &&
                                                  total_chances == 2) {
                                                setState(() {
                                                  total_chances--;
                                                  wrong = true;
                                                });
                                              } else if (total_chances == 1 &&
                                                  d != number1) {
                                                setState(() {
                                                  remaining_try++;
                                                  total_chances--;
                                                  wrong = true;
                                                });
                                              }
                                            } else {
                                              setState(() {
                                                gen = true;
                                              });
                                            }
                                          } else {
                                            setState(() {
                                              newgen = true;
                                            });
                                          }
                                          // Code to execute when the button is pressed
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              correct == true
                                  ? Container(
                                      decoration: BoxDecoration(
                                        color: Colors.teal,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text("Right Answer"),
                                      ))
                                  : SizedBox(
                                      height: 05,
                                    ),
                              wrong == true
                                  ? Container(
                                      decoration: BoxDecoration(
                                        color: Colors.deepOrange,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text("Wrong Answer"),
                                      ))
                                  : SizedBox(
                                      height: 5,
                                    ),
                              gen == true
                                  ? Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Text(
                                            "Game Over! Genrate Number Again"),
                                      ))
                                  : SizedBox(
                                      height: 0,
                                    ),
                              newgen == true
                                  ? Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Text("Again Genrate Number"),
                                      ))
                                  : SizedBox(
                                      height: 0,
                                    ),
                              SizedBox(
                                height: 50,
                              ),
                              generateNumber == false
                                  ? SizedBox(
                                      height: 0,
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: MaterialButton(
                                              child: Text(
                                                  'Genrate Number Again',
                                                  style: TextStyle(
                                                      fontSize: 24,
                                                      color: Colors.black)),
                                              // Black foreground color
                                              onPressed: () {
                                                setState(() {
                                                  generateNumber = false;
                                                  correct = false;
                                                  wrong = false;
                                                  gen = false;
                                                  newgen = false;
                                                });
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 100,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: MaterialButton(
                                              child: Text('Show Results',
                                                  style:
                                                      TextStyle(fontSize: 24)),
                                              // Black foreground color
                                              onPressed: () {
                                                setState(() {
                                                  screenchange = true;
                                                });
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                            ],
                          ),
                        )
                      : SizedBox(
                          height: 0,
                        ),
                ],
              )
            : Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                    "${correct_answer} Right Attempts out of $remaining_try",
                                    style: TextStyle(
                                        fontSize: 24, color: Colors.black)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: MaterialButton(
                        child: Text('Add Data in Firebase and SQLITE',
                            style:
                                TextStyle(fontSize: 22, color: Colors.black)),
                        // Black foreground color
                        onPressed: () {
                          var result = FirebaseFirestore.instance
                              .collection("mytries")
                              .doc(current?.uid)
                              .collection('data')
                              .add({
                            'all': remaining_try.toString(),
                            'correct': correct_answer.toString(),
                          });
                          if (result != null) {
                            const snackBar = SnackBar(
                              content: Text('Add Data Successfully'),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        }),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: MaterialButton(
                          child: Text('Show Results',
                              style:
                                  TextStyle(fontSize: 24, color: Colors.black)),
                          // Black foreground color
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ShowAllRecord()));
                          })),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: MaterialButton(
                          child: Text('Play Game Again',
                              style:
                                  TextStyle(fontSize: 24, color: Colors.black)),
                          // Black foreground color
                          onPressed: () {
                            setState(() {
                              screenchange = false;
                            });
                          })),
                ],
              ),
      ),
    );
  }
}
