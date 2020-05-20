import 'package:flutter/material.dart';
import 'package:socialnetwork/screens/Profile/UserBlock.dart';
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
          ]
        ),
      ),
    );
  }
}
