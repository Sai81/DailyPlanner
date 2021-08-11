import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'result.dart';

import '../ScreenCard.dart';
import '../bmi_calculator.dart';

Color active = Colors.green;
Color maleColor = Colors.blue;
Color femaleColor = Colors.pinkAccent;
Color maleButtonColor = maleColor;
Color femaleButtonColor = femaleColor;

class BMIPage extends StatefulWidget {
  static const String route = '/bmi';
  @override
  _BMIPageState createState() => _BMIPageState();
}

class _BMIPageState extends State<BMIPage> {
  int height = 100;
  int weight = 50;
  int age = 20;


  void updateColor(int i){
    if(i==1){
      maleButtonColor = active;
      femaleButtonColor = femaleColor;
    }
    else{
      maleButtonColor = maleColor;
      femaleButtonColor = active;
    }
  }

  void updateWeight(bool op){
    if(op){
      weight++;
    }
    else{
      weight--;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Center(
          child: Text(
              'BMI CALCULATOR'
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child:Row(
              children:<Widget>
              [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(1);
                      });

                    },
                    child: ScreenCard(
                      colour: maleButtonColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 80.0,
                          ),
                          SizedBox(
                            height:15.0,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                            )
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                child:GestureDetector(
                  onTap: (){
                    setState(() {
                      updateColor(2);
                    });
                  },
                  child: ScreenCard(
                    colour: femaleButtonColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 80.0,
                        ),
                        SizedBox(
                          height:15.0,
                        ),
                        Text(
                            'FEMALE',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                            )
                        )
                      ],
                    ),
                  ),
                ),
                ),
              ],
            ),
          ),

          Expanded(
              child:Row(
            children:<Widget>
            [
              ScreenCard(
                colour: Color(0xFF1D1E33),
                cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                        Text(
                          height.toString(),
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      Text(
                        'cm',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      ],
                    ),
                    Slider(
                        value: height.toDouble(),
                        min: 80,
                        max: 210,
                        activeColor: Colors.red,
                        inactiveColor: Colors.white,
                        onChanged: (double newValue){
                          setState(() {
                            height = newValue.round();
                          });
                        }
                    ),
                  ],
                ),
              ),
            ],
          ),
          ),

          Expanded(
            child:Row(
              children:<Widget>
              [
                ScreenCard(
                  colour: Color(0xFF1D1E33),
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'AGE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            age.toString(),
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            'YRS',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                              icon: Icon(
                                FontAwesomeIcons.plus,
                                size: 30,
                              ),
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            IconButton(
                              color: Colors.white,
                              onPressed: (){
                                setState(() {
                                  age--;
                                });

                              },
                              icon: Icon(
                                FontAwesomeIcons.minus,
                                size: 30,
                              ),
                            ),
                          ]
                      )
                    ],
                  ),
                ),
                ScreenCard(
                  colour: Color(0xFF1D1E33),
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            weight.toString(),
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            'Kg',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: Icon(
                                FontAwesomeIcons.plus,
                                size: 30,
                              ),
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            IconButton(
                              color: Colors.white,
                              onPressed: (){
                                setState(() {
                                  weight--;
                                });

                              },
                              icon: Icon(
                                FontAwesomeIcons.minus,
                                size: 30,
                              ),
                            ),
                          ]
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              BMICalculator calc =
              BMICalculator(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Result(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
            child: Container(
              color: Colors.red,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 60.0,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'CALCULATE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



