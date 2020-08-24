import 'package:flutter/material.dart';

import '../constants.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final Function onTap;

  ActionButton({@required this.title, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: kLargeButtonTextStyle,
          ),
        ),
        height: bottomContainerHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 25.0),
        color: bottomContainerColor,
      ),
    );
  }
}