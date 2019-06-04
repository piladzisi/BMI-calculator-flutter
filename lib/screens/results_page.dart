import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/reusable_card_content.dart';
import 'package:bmi_calculator/components/xl_button.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'bmi calculator'.toUpperCase(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'normal'.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    '22.1',
                    style: kBMITextStyle,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Normal BMI range:',
                        style: kLabelTextStyle,
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        '18.5 - 25 kg/m2',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                  Text(
                    'You are perfect! Eat more',
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                  XLButton(
                    buttonTitle: 're-calculate'.toUpperCase(),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InputPage(),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
