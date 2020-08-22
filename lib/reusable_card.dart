import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color mColor;
  final Widget mChild;

  ReusableCard({@required this.mColor, this.mChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: mChild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: mColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}