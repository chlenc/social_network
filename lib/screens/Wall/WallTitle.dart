import 'package:flutter/material.dart';
import 'package:socialnetwork/components/ScreenTitle.dart';

class WallTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.fromLTRB(40, 32, 40, 0),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ScreenTitle(text: 'Hello,', fontSize: 18, color: '#D2BBC7'),
                ScreenTitle(
                  text: 'Claus',
                  color: '#A06784',
                ),
              ]),
          FlatButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            child: Image.asset('assets/images/menu.png'),
          ),
        ],
      ),
    );
  }
}
