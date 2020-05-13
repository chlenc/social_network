import 'package:flutter/material.dart';
import 'package:socialnetwork/components/Avatar.dart';
import 'package:socialnetwork/utils/hexToColor.dart';
import '../../vars.dart';
import 'package:timeago/timeago.dart' as timeago;

//class PostData extends User{
//
//  PostData({this.assets, this.lastUpdate, this.owner});
//
//  List<Image> assets;
//  DateTime lastUpdate;
//  User owner;
//}

class Post extends StatelessWidget {
  Post({this.asset, this.lastUpdate, this.owner});

  final String asset;
  final DateTime lastUpdate;
  final User owner;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(40, 0, 40, 40),
      height: 400,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 340,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(asset),
                    fit: BoxFit.cover,
                  ),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(40))),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Avatar(img: owner.avatar, margin: EdgeInsets.all(24)),
                        Padding(
                          padding: EdgeInsets.only(top: 28, bottom: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '${owner.lastName} ${owner.firstName}',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: hexToColor('#6A515E')),
                              ),
                              Text(
                                timeago.format(lastUpdate),
                                style: TextStyle(
                                  color: hexToColor('#D7BDCA'),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(25),
                    child: Image.asset('assets/images/menu.png'),
                  )
                ],
              ),
              height: 96,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(0),
                ),
              ),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: hexToColor('#F7EAEA'),
              offset: Offset(0, 10),
              spreadRadius: 10,
              blurRadius: 80)
        ],
      ),
    );
  }
}
