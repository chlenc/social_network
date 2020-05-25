import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialnetwork/utils/hexToColor.dart';

class NavigationTitle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
          color: hexToColor('#222B45'),
          alignment: Alignment.centerLeft,
        ),
        FlatButton(
          onPressed: () => Scaffold.of(context).openDrawer(),
          child: Image.asset('assets/images/menu.png'),
        ),
      ],
    );
  }
}