import 'package:flutter/material.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'bmi calculator'.toUpperCase(),
        ),
      ),
      body: Text('welcome to BMI page'),
    );
  }
}
