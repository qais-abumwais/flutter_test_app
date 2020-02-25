import 'package:crew_art/theme/style.dart';
import 'package:flutter/material.dart';

class ColmarButton extends StatelessWidget {
  final VoidCallback onPressed;
  final TextStyle colmarButtonTextStyle;
  final String buttonName;
  final double circularDegree;
  final Color buttonColor;

  ColmarButton({
    this.buttonName,
    this.onPressed,
    this.colmarButtonTextStyle,
    this.circularDegree,
    this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(circularDegree)??BorderRadius.circular(8.0),
      ),
      color: buttonColor?? Colors.blue,
      elevation: 10,
      child: Text(
        buttonName,
        style: buttonTextStyle ?? colmarButtonTextStyle,
      ),
    );
  }
}
