import 'package:flutter/material.dart';

class ScreenCard extends StatelessWidget {

  final Color colour;
  final Widget cardChild;
  ScreenCard({@required this.colour,@required this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}