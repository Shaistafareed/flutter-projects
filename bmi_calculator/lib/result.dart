import 'package:flutter/material.dart';
import 'constantfile.dart';
import 'Containerfile.dart';
import 'input_page.dart';
class resultScreen extends StatelessWidget {
  resultScreen({required this.bmiResult,required this.resultText,required this.interpretion});
  final String bmiResult;
  final String resultText;
  final String interpretion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(  child: Container(
              child: Center(
                  child:Text(
                    'Result',
                    style: style2,

                  )
              )),
          ),

          Expanded(
            flex: 5,
            child: RepeatContainerCode(
                colors: active,
                cardWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly
                  ,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText,
                      style: style3,
                    ),
                    Text(
                      bmiResult,
                      style: style3,
                    ),
                    Text(interpretion, style: style3),
                  ],
                ), onPressed: (){}

            ),
          ),
          Expanded(
            child:   GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>InputPage()));
              },
              child:  Container(
                child: Text('Recalculator',style: large),
                color: Color(0xFFEB1555),
                margin:EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height:80.0,
              ),
            ),
          ),
        ],

      ),
    );
  }
}
