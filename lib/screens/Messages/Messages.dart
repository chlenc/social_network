import 'package:flutter/material.dart';
import 'package:socialnetwork/components/NavigationTitle.dart';
import 'package:socialnetwork/components/ScreenTitle.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(40, 32, 40, 0),
          child: Column(
            children: [
              NavigationTitle(),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Row(children: <Widget>[ScreenTitle(text: 'Conversations')]),
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
