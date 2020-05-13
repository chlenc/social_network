import 'package:flutter/material.dart';
import 'package:socialnetwork/utils/hexToColor.dart';

class ScreenTitle extends StatelessWidget {
  ScreenTitle(
      {this.text,
      this.fontSize = 28,
      this.color = '#6A515E',
      this.height = 1.5});

  final String text;
  final double fontSize;
  final double height;
  final String color;

  @override
  Widget build(BuildContext context) => Text(
        text,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: 'Merriweather',
            fontSize: fontSize,
            color: hexToColor(color),
            height: 1.5),
      );
}
