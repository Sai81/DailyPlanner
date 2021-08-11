import 'package:flutter/material.dart';
import 'package:health_app/Screens/todo.dart';
import 'Screens/result.dart';
import 'Screens/welcome.dart';
import 'Screens/bmi.dart';

void main() => runApp(MyHealthApp());

class MyHealthApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,//for appBar
        accentColor: Colors.orange,//for floating action button
        //0xFFRRGGBB...is the rgb for Color()'s parameter,
        // first 4 letters..degree of transparancy,0xff..means opaque
      ),
        initialRoute: Welcome.route,
        routes: {
          Welcome.route: (context)=>Welcome(),
          BMIPage.route : (context)=>BMIPage(),
          todoui.route: (context)=>todoui()
        }
    );
  }//for theme u can even modify dark theme etc
//can add seperate theme for each and every widget
}

