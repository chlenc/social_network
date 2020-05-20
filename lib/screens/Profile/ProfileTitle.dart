import 'package:flutter/material.dart';
import 'package:socialnetwork/components/ScreenTitle.dart';
import 'package:socialnetwork/screens/Profile/UserBlock.dart';
import 'package:socialnetwork/utils/hexToColor.dart';
import 'package:socialnetwork/vars.dart';

class ProfileTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.fromLTRB(40, 32, 40, 0),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
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
          ),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Row(children: <Widget>[ScreenTitle(text: 'My Profile')]),
          ),
          SizedBox(height: 32),
          UserBlock(userData),
        ],
      ),
    );
  }
}
