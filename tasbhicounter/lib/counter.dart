import 'package:flutter/material.dart';
import 'package:tasbeeh_counter/home.dart';

import 'newtasbeeh.dart';
import 'package:page_transition/page_transition.dart';

class CounterPage extends StatefulWidget {

  final String ? TasbeehText, TasbeehCount;
  const CounterPage({Key ? key,this.TasbeehText,this.TasbeehCount}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _restartCounter() {
    setState(() {
      _counter=0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Tasbeeh-Counter ',
            style: TextStyle(
                color: Colors.white,

                fontStyle: FontStyle.italic,
                fontFamily: 'Open Sans',
                fontSize: 20)

        ),
        centerTitle: true,
        backgroundColor: Colors. blueGrey[600],
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
            ),


            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return myalertbox();
                  });
            },
          ),
        ],
      ),

      body:SafeArea(
        child:  Container(

        decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/tasbih.jpeg"),
    fit: BoxFit.fill
    )
    ), child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${widget.TasbeehText}\n',
                          style: TextStyle(
                              color: Colors. blueGrey[600],

                              fontStyle: FontStyle.italic,
                              fontFamily: 'Open Sans',
                              fontSize: 30)
                      ),
                      Text('Count ${widget.TasbeehCount}',
                          style: TextStyle(
                              color: Colors. blueGrey[600],

                              fontStyle: FontStyle.italic,
                              fontFamily: 'Open Sans',
                              fontSize: 30)
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                  height: 300,
                  width: 400,
                  decoration: BoxDecoration(
                   color: Colors. blueGrey[600],
                   borderRadius: BorderRadius.circular(15),
                  ),

                  margin: EdgeInsets.all(15),
                  padding: const EdgeInsets.fromLTRB(0,25,0,0),
                  child:
                      Column(
                        children: [
                          Text(
                              'Counter ',
                              style: TextStyle(
                                  color: Colors.white,

                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Open Sans',
                                  fontSize: 30)

                          ),
                          Text(
                            '$_counter',
                              style: TextStyle(
                                  color: Colors.white,

                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Open Sans',
                                  fontSize: 30)
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,35,0,0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.add,size: 50
                                  ),
                                  color:Colors.white,

                                  onPressed: _incrementCounter,
                                ),

                                IconButton(
                                  icon: Icon(
                                      Icons.refresh,size:   100
                                  ),
                                  color:Colors.white,

                                  onPressed: _restartCounter
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox.fromSize(
                    size: Size(100,40),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: home(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_back_sharp,
                        size: 24.0,
                      ),
                      label: Text('Back'),
                    ),
                  ),



                  SizedBox.fromSize(
                    size: Size(200,40),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: home(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.file_download_outlined,
                        size: 24.0,
                      ),
                      label: Text('Save'), // <-- Text
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),),
      ),
    );
  }
}

