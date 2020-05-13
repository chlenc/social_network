import 'package:flutter/material.dart';
import 'package:socialnetwork/screens/Wall/WallTitle.dart';
import 'package:socialnetwork/utils/hexToColor.dart';
import '../../vars.dart';
import 'NavigationMenu.dart';
import 'Post.dart';
import 'Stories.dart';

class Wall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationMenu(),
      body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.05, 0.5],
              colors: ['#FFFFFF', '#FFFBFB'].map((c) => hexToColor(c)).toList(),
            ),
          ),
          child: Container(
            child: ListView(
              children: <Widget>[
                WallTitle(),
                Stories(),
                Post(
                  lastUpdate: DateTime.now(),
                  asset: 'assets/images/asset1.jpeg',
                  owner: userDara,
                ),
                Post(
                  lastUpdate: DateTime.now(),
                  asset: 'assets/images/asset2.jpeg',
                  owner: userDara,
                ),
                Post(
                  lastUpdate: DateTime.now(),
                  asset: 'assets/images/asset3.jpeg',
                  owner: userDara,
                ),
                Post(
                  lastUpdate: DateTime.now(),
                  asset: 'assets/images/asset4.jpeg',
                  owner: userDara,
                ),
              ],
            ),
          )),
    );
  }
}
