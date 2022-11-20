import 'package:flutter/material.dart';
import 'counter.dart';
import 'package:page_transition/page_transition.dart';

class myalertbox extends StatefulWidget {
  @override
  _myalertboxState createState() => _myalertboxState();
}

class _myalertboxState extends State<myalertbox> {

  TextEditingController TextController = TextEditingController();
  TextEditingController CountingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
                  return AlertDialog(

                    title: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors. blueGrey[600],

                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Create Tasbeeh',
                              style: TextStyle(
                                  color: Colors.white,

                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Open Sans',
                                  fontSize: 30)),
                        ],
                      ),
                    ),

                    content: Container(
                      width: 300,
                      height: 250,
                      child: Column(
                        children: <Widget>[
                        Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              SizedBox.fromSize(
                                size: Size(10,10),
                              ),

                              Padding(
                                padding: EdgeInsets.all(15.0),
                                child: TextFormField(
                                  controller: TextController,
                                  decoration: InputDecoration(
                                    hintText: 'Name of Tasbeeh',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(15.0),
                                child: TextFormField(
                                  controller: CountingController,
                                  decoration: InputDecoration(
                                    hintText: 'How many times',
                                  ),
                                ),
                              ),

                              SizedBox.fromSize(
                                size: Size(10,10),
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [


                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextButton(
                                      child: Text('Cancel',

                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextButton(
                                      child: Text('Save'),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            child: CounterPage(
                                              TasbeehText: TextController.text,
                                              TasbeehCount: CountingController.text,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                      ],
                      ),
                    ),
                  );

  }
}
