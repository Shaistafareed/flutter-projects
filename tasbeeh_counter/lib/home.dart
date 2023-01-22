import 'package:flutter/material.dart';
import 'package:tasbeeh_counter/viewall.dart';
import 'package:tasbeeh_counter/counter.dart';

import 'newtasbeeh.dart';
import 'viewall.dart';
import 'package:page_transition/page_transition.dart';


class home extends StatelessWidget {

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
      ),

      body:Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/tasbih.jpeg"),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              CircleAvatar(
                      radius:  100,
                      backgroundColor: Color(0xFF2F2F2F),
                      backgroundImage: AssetImage('images/little.png'),
                    ),

            ],
          ),

          SizedBox.fromSize(
            size: Size(350,50),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return myalertbox();
                    });
              },
               child: Text(
                   'Creat New Tasbeeh ',
                   style: TextStyle(
                       color: Colors.white,

                       fontStyle: FontStyle.italic,
                       fontFamily: 'Open Sans',
                       fontSize: 20)

               ),
            ),
          ),

          SizedBox.fromSize(
            size: Size(350,50),
            child: ElevatedButton(
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
                    child: CounterPage(),
                  ),
                );
              },
              child:Text(
                  'Count Tasbeeh',
                  style: TextStyle(
                      color: Colors.white,

                      fontStyle: FontStyle.italic,
                      fontFamily: 'Open Sans',
                      fontSize: 20)

              ),
            ),
          ),

          SizedBox.fromSize(
            size: Size(350,50),
            child: ElevatedButton(
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
                    child: viewall(),
                  ),
                );
              },
              child: Text(
                  'Details About Tasbeeh ',
                  style: TextStyle(
                      color: Colors.white,

                      fontStyle: FontStyle.italic,
                      fontFamily: 'Open Sans',
                      fontSize: 20)

              ),
            ),
          ),


        ]
        ),
      ),
    );
  }
}
