import 'package:bmi_calculator/components/action_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'file:///D:/FlutterProjects/bmi_calculator/lib/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
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
                    'Normal',
                        style: kResultTextStyle,
                  ),
                  Text(
                    '18.2',
                    style: kBodyTextStyle,
                  ),
                  Text(
                    'Your BMI is too low. Eat more!',
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
