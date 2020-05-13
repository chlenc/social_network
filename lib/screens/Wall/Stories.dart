import 'package:flutter/material.dart';
import 'package:socialnetwork/components/Avatar.dart';
import 'package:socialnetwork/utils/hexToColor.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var storiesList = [
      'ava1.png',
      'ava2.png',
      'ava3.png',
      'ava4.png',
      'ava5.png',
    ]
        .map((v) => Story(
              avatar: v,
            ))
        .toList();
    storiesList.insert(0, Story(isButton: true));
    return Container(
      height: 174,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 48),
        children: storiesList,
      ),
    );
  }
}

class Story extends StatelessWidget {
  Story({this.avatar, this.isButton = false});

  final String avatar;
  final bool isButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: 78,
      child: avatar != null
          ? Center(
              child: Avatar(
                img: Image.asset('assets/images/' + avatar,),
                size: 68,
              ),
            )
          : null,
      decoration: BoxDecoration(
          image: isButton
              ? DecorationImage(
                  image: AssetImage('assets/images/add_story_btn.png'),
                  fit: BoxFit.contain,
                )
              : null,
          color: isButton ? Colors.white : null,
          gradient: !isButton
              ? LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  stops: [0.1, 0.7, 1],
                  colors: ['#FFAE88', '#8F93EA', '#5FD3FF']
                      .map((c) => hexToColor(c))
                      .toList(),
                )
              : null,
          borderRadius: BorderRadius.circular(39),
          boxShadow: [shadow]),
    );
  }
}

var shadow = BoxShadow(
    color: hexToColor('#F7EAEA'),
    offset: Offset(0, 8),
    spreadRadius: 5,
    blurRadius: 50);
