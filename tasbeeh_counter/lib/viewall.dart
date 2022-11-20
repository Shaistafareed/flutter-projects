import 'package:flutter/material.dart';

import 'newtasbeeh.dart';

class viewall extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasbeeh Counter"),
        centerTitle: true,
        backgroundColor: Colors. blueGrey[600],
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
            ),
            color:Colors.white,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
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


        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5,0,5,1),
                child: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5,0,5,1),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color:  Colors. blueGrey[600],
                      ),
                      margin: EdgeInsets.only(top: 10.0),
                      height: 100.0,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child:Text(
                                      'سبحان الله ',
                                      style: TextStyle(
                                          color: Colors.white,

                                          fontStyle: FontStyle.italic,
                                          fontFamily: 'Open Sans',
                                          fontSize: 30)

                                  ),
                                ),
                              ],
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                    'How many times?33 ',
                                    style: TextStyle(
                                        color: Colors.white,

                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'Open Sans',
                                        fontSize: 20)

                                ),
                                Text(
                                    'Number of Sets 1 ',
                                    style: TextStyle(
                                        color: Colors.white,

                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'Open Sans',
                                        fontSize: 20)

                                ),
                              ],
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.edit,
                                  ),
                                  color:Color(0xFF2F2F2F),
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.delete,
                                  ),
                                  color:Color(0xFF2F2F2F),
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5,0,5,1),
                child: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5,0,5,1),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color:  Colors. blueGrey[600],
                      ),
                      margin: EdgeInsets.only(top: 10.0),
                      height: 100.0,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child:Text(
                                      'ٱلْحَمْدُ لِلَّٰهِ ',
                                      style: TextStyle(
                                          color: Colors.white,

                                          fontStyle: FontStyle.italic,
                                          fontFamily: 'Open Sans',
                                          fontSize: 30)

                                  ),
                                ),
                              ],
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                    'How many times?33 ',
                                    style: TextStyle(
                                        color: Colors.white,

                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'Open Sans',
                                        fontSize: 20)

                                ),
                                Text(
                                    'Number of Sets 1 ',
                                    style: TextStyle(
                                        color: Colors.white,

                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'Open Sans',
                                        fontSize: 20)

                                ),
                              ],
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.edit,
                                  ),
                                  color:Color(0xFF2F2F2F),
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.delete,
                                  ),
                                  color:Color(0xFF2F2F2F),
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5,0,5,1),
                child: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5,0,5,1),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color:  Colors. blueGrey[600],
                      ),
                      margin: EdgeInsets.only(top: 10.0),
                      height: 100.0,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child:Text(
                                      'اللّٰهُ أَكْبَر‎ ',
                                      style: TextStyle(
                                          color: Colors.white,

                                          fontStyle: FontStyle.italic,
                                          fontFamily: 'Open Sans',
                                          fontSize: 30)

                                  ),
                                ),
                              ],
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                    'How many times?33 ',
                                    style: TextStyle(
                                        color: Colors.white,

                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'Open Sans',
                                        fontSize: 20)

                                ),
                                Text(
                                    'Number of Sets 1 ',
                                    style: TextStyle(
                                        color: Colors.white,

                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'Open Sans',
                                        fontSize: 20)

                                ),
                              ],
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.edit,
                                  ),
                                  color:Color(0xFF2F2F2F),
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.delete,
                                  ),
                                  color:Color(0xFF2F2F2F),
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5,0,5,1),
                child: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5,0,5,1),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color:  Colors. blueGrey[600],
                      ),
                      margin: EdgeInsets.only(top: 10.0),
                      height: 100.0,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child:Text(
                                      ' أَسْتَغْفِرُ اللّٰهَ‎  ',
                                      style: TextStyle(
                                          color: Colors.white,

                                          fontStyle: FontStyle.italic,
                                          fontFamily: 'Open Sans',
                                          fontSize: 30)

                                  ),
                                ),
                              ],
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                    'How many times?33 ',
                                    style: TextStyle(
                                        color: Colors.white,

                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'Open Sans',
                                        fontSize: 20)

                                ),
                                Text(
                                    'Number of Sets 1 ',
                                    style: TextStyle(
                                        color: Colors.white,

                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'Open Sans',
                                        fontSize: 20)

                                ),
                              ],
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.edit,
                                  ),
                                  color:Color(0xFF2F2F2F),
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.delete,
                                  ),
                                  color:Color(0xFF2F2F2F),
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                  ),
                ),
              ),  Padding(
                padding: const EdgeInsets.fromLTRB(5,0,5,1),
                child: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5,0,5,1),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color:  Colors. blueGrey[600],
                      ),
                      margin: EdgeInsets.only(top: 10.0),
                      height: 100.0,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child:Text(
                                      'صَلَّىٰ اللّٰهُ عَلَىٰ سَیِّدِنَا مُحَمَّدٍ ',
                                      style: TextStyle(
                                          color: Colors.white,

                                          fontStyle: FontStyle.italic,
                                          fontFamily: 'Open Sans',
                                          fontSize: 30)

                                  ),
                                ),
                              ],
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                    'How many times?1 ',
                                    style: TextStyle(
                                        color: Colors.white,

                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'Open Sans',
                                        fontSize: 20)

                                ),
                                Text(
                                    'Before and After ',
                                    style: TextStyle(
                                        color: Colors.white,

                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'Open Sans',
                                        fontSize: 20)

                                ),
                              ],
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.edit,
                                  ),
                                  color:Color(0xFF2F2F2F),
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.delete,
                                  ),
                                  color:Color(0xFF2F2F2F),
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

    );
  }
}
