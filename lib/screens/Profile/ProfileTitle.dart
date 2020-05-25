import 'package:flutter/material.dart';
import 'package:socialnetwork/components/NavigationTitle.dart';
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
          NavigationTitle(),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Row(children: <Widget>[ScreenTitle(text: 'My Profile')]),
          ),
          SizedBox(height: 32),
          UserBlock(userData),
          ProfileInfo()
        ],
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        ProfileInfoItem(title: 'Photos', count: '576'),
        ProfileInfoItem(title: 'Followers', count: '12,454'),
        ProfileInfoItem(title: 'Follows', count: '127'),
      ],
    );
  }
}

class ProfileInfoItem extends StatelessWidget {
  ProfileInfoItem({this.count, this.title});

  final String title;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: hexToColor('#C7ABBA'),
              fontSize: 18,
            ),
          ),
          Text(
            count,
            style: TextStyle(
              color: hexToColor('#6A515E'),
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
