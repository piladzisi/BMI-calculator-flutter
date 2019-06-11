import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ReusableCardIconColumn extends StatelessWidget {
  ReusableCardIconColumn({this.cardIcon, this.label});

  final IconData cardIcon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardIcon,
          size: 60.0,
        ),
        SizedBox(height: 15.0),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
