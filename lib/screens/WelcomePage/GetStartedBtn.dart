import 'package:flutter/material.dart';
import 'package:socialnetwork/utils/hexToColor.dart';

class GetStartedBtn extends StatelessWidget {
  GetStartedBtn({this.onClick});

  final Function onClick;

  @override
  Widget build(BuildContext context) =>  GestureDetector(
    onTap: onClick,
    child: Container(
      width: 295,
      height: 66,
      margin: EdgeInsets.only(bottom: 32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [0.1, 0.7, 1],
          colors: ['#FFAE88', '#8F93EA', '#5FD3FF']
              .map((c) => hexToColor(c))
              .toList(),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            'Get Started',
            style: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset('assets/images/vector.png', fit: BoxFit.cover)
        ],
      ),
    ),
  );
}