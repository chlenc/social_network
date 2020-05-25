import 'package:flutter/material.dart';
import 'package:socialnetwork/screens/Wall/Post.dart';
import 'package:socialnetwork/vars.dart';

import 'ProfileTitle.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ProfileTitle(),
            SizedBox(height: 64),
            Post(
              lastUpdate: DateTime.now(),
              asset: 'assets/images/asset1.jpeg',
              owner: userData,
            ),
            Post(
              lastUpdate: DateTime.now(),
              asset: 'assets/images/asset2.jpeg',
              owner: userData,
            ),
            Post(
              lastUpdate: DateTime.now(),
              asset: 'assets/images/asset3.jpeg',
              owner: userData,
            ),
            Post(
              lastUpdate: DateTime.now(),
              asset: 'assets/images/asset4.jpeg',
              owner: userData,
            ),
          ]
        ),
      ),
    );
  }
}
