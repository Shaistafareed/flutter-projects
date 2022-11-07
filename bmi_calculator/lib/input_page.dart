
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconTextFile.dart';
import 'Containerfile.dart';
import 'constantfile.dart';
import 'result.dart';
import 'calculator.dart';
enum Gender{
  male,
  female,
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late Gender selectGender;
  int sliderHeight=180;
  int sliderWeight=60;
  int sliderAge=20;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
          children: <Widget>[
            Expanded(
              child:Row(
                  children:<Widget>[
                    Expanded(


                      child: RepeatContainerCode(
                          onPressed: (){
                            setState(() {
                              selectGender=Gender.male;
                            });
                          },
                          colors:selectGender==Gender.male?active:deactive,cardWidget:RpeatTextandICONWidget(
                        iconData:FontAwesomeIcons.male,
                        label:'Male',
                      )
                      ),
                      // ),
                    ),
                    Expanded(

                      child: RepeatContainerCode(
                          onPressed: (){
                            setState(() {
                              selectGender=Gender.female;
                            });
                          },
                          colors:selectGender==Gender.female?active:deactive,
                          cardWidget:RpeatTextandICONWidget(
                            iconData:FontAwesomeIcons.female,
                            label:'Female',
                          )


                      ),
                      // ),
                    ),
                  ]
              ),

            ),

            Expanded(
              child:Row(
                  children:<Widget>[
                    Expanded(
                      child:new RepeatContainerCode(
                          colors:Color(0xFF1D1E33),
                          cardWidget:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:<Widget>[
                                Text("height",style:kLabelStyle),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        sliderHeight.toString(),
                                        style: kNumberStyle,
                                      ),
                                      Text(
                                        'cm',
                                        style: kLabelStyle,
                                      ),

                                    ]
                                ),
                                Slider(value: sliderHeight.toDouble(),
                                  min: 120.0,
                                  max: 220.0,
                                  activeColor: Color(0xFFEB1555),
                                  inactiveColor: Color(0xFF8D8E98),
                                  onChanged: (double newValue){
                                    setState(() {
                                      sliderHeight= newValue.round();
                                    });
                                  },
                                ),
                              ]
                          ), onPressed: (){}
                      ),
                    ),
                  ]
              ),
            ),

            Expanded(
              child:Row(
                  children:<Widget>[
                    Expanded(
                      child:new RepeatContainerCode(
                          colors:Color(0xFF1D1E33),
                          cardWidget: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Weight',
                                style: kLabelStyle,
                              ),
                              Text(
                                sliderWeight.toString(),
                                style: kNumberStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget> [
                                  RoundIcon(
                                      iconData:FontAwesomeIcons.minus,
                                      onPress:(){
                                        setState(() {
                                          sliderWeight--;
                                        });
                                      }

                                  ),
                                  SizedBox(width: 10.0,),
                                  RoundIcon(
                                      iconData:FontAwesomeIcons.minus,
                                      onPress:(){
                                        setState(() {
                                          sliderWeight++;
                                        });
                                      }

                                  ),
                                ],

                              ),
                            ],
                          ), onPressed: (){}
                      ),
                    ),
                    Expanded(
                      child:new RepeatContainerCode(
                          colors:Color(0xFF1D1E33),
                          cardWidget: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Age',
                                style: kLabelStyle,
                              ),
                              Text(
                                sliderAge.toString(),
                                style: kNumberStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget> [
                                  RoundIcon(
                                      iconData:FontAwesomeIcons.minus,
                                      onPress:(){
                                        setState(() {
                                          sliderAge--;
                                        });
                                      }

                                  ),
                                  SizedBox(width: 10.0,),
                                  RoundIcon(
                                      iconData:FontAwesomeIcons.minus,
                                      onPress:(){
                                        setState(() {
                                          sliderAge++;
                                        });
                                      }

                                  ),
                                ],

                              ),
                            ],
                          ), onPressed: (){}
                      ),
                    ),
                  ]
              ),

            ),
            GestureDetector(
              onTap: (){
                calculatorBrain calc=calculatorBrain(height:sliderWeight, weight: sliderWeight);
                Navigator.push(context,MaterialPageRoute(builder:(context)=>resultScreen(
                  bmiResult:calc.getcalculatorB(),
                  interpretion: calc.getinter(),
                  resultText: calc.getResult(),
                )));
              },
              child:  Container(
                child: Text('calculator',style: large),
                color: Color(0xFFEB1555),
                margin:EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height:80.0,
              ),
            ),
          ]
      ),
    );
  }
}
class RoundIcon extends StatelessWidget {
  RoundIcon({required this.iconData, required this.onPress});

  final IconData iconData;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: onPress,
      elevation: 60,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}



