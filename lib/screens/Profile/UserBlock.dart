import 'package:flutter/material.dart';
import 'package:socialnetwork/components/Avatar.dart';
import 'package:socialnetwork/utils/hexToColor.dart';
import '../../vars.dart';

class UserBlock extends StatelessWidget {
  UserBlock(this.user);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Avatar(
          img: user.avatar,
          size: 95,
          margin: EdgeInsets.only(bottom: 32),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(246, 209, 235, 0.78),
                offset: Offset(0, 20),
                spreadRadius: 20,
                blurRadius: 50)
          ],
        ),
        Text(
          '${user.lastName} ${user.firstName}',
          style: TextStyle(
              fontSize: 28,
              color: hexToColor('#6A515E'),
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          user.username,
          style: TextStyle(
              fontSize: 18,
              color: hexToColor('#C7ABBA'),
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 64),
      ],
    );
  }
}
