import 'package:flutter/material.dart';
import 'package:socialnetwork/screens/Profile/UserBlock.dart';
import 'package:socialnetwork/utils/hexToColor.dart';
import '../../vars.dart';

class NavigationMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.75,
      padding: EdgeInsets.only(top: 64),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            UserBlock(userDara),
            NavButton(
              text: 'Go to profile',
              icon: Icon(Icons.home, color: Colors.white),
              onClick: () => Navigator.pushNamed(context, '/Profile'),
            ),
            NavButton(
              text: 'Go to messages',
              icon: Icon(Icons.mail, color: Colors.white),
              onClick: () => Navigator.pushNamed(context, '/Messages'),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        stops: [0.2, .7],
        colors: ['#FFF7F8', '#FFF0F2'].map((c) => hexToColor(c)).toList(),
      )),
    );
  }
}

class NavButton extends StatelessWidget {
  NavButton({this.onClick, this.text, this.icon});

  final Function onClick;
  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        margin: EdgeInsets.only(bottom: 32, left: 24, right: 24),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
        child: Row(
          children: <Widget>[
            Container(
                width: 56,
                height: 56,
                child: icon,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    stops: [0.1, 0.75, 1],
                    colors: ['#FFAE88', '#8F93EA', '#5FD3FF']
                        .map((c) => hexToColor(c))
                        .toList(),
                  ),
                )),
            SizedBox(width: 18),
            Text(
              text,
              style: TextStyle(
                color: hexToColor('#6A515E'),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
