import 'package:flutter/material.dart';
import 'package:health_app/ScreenCard.dart';

class Result extends StatelessWidget {
  Result(
      {@required this.interpretation,
        @required this.bmiResult,
        @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(
          color: Color(0xFF1D1E33),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Center(
                      child: Text(
                      'RESULT',
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                  ),
                    ),
                ),
              Expanded(
                flex: 5,
                child: ScreenCard(
                    colour: Colors.black,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          resultText.toUpperCase(),
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.green,
                          ),
                        ),
                        Text(
                          bmiResult,
                          style: TextStyle(
                            fontSize: 80,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          interpretation,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),

                      ]
                    )
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  color: Colors.red,
                  margin: EdgeInsets.only(top: 10.0),
                  width: double.infinity,
                  height: 60.0,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'RE-CALCULATE',
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
        ),
      )

    );
  }
}
