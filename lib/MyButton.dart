import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      onPressed: onPressed(),
      constraints: BoxConstraints.tightFor(
        width: 20,
        height: 20,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}