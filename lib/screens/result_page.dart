import 'package:bmi_calculator/components/action_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'file:///D:/FlutterProjects/bmi_calculator/lib/components/reusable_card.dart';

class ResultPage extends StatelessWidget {
  final String resultText;
  final String bmiResult;
  final String suggestionText;

  ResultPage({this.resultText, this.bmiResult, this.suggestionText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kNumberTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBodyTextStyle,
                  ),
                  Text(
                    suggestionText,
                    textAlign: TextAlign.center,
                    style: kSuggestionTextStyle,
                  ),
                ],
              ),
              color: activeCardColor,
            ),
          ),
          Expanded(
            child: ActionButton(
              title: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
