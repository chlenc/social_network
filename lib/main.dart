import 'package:flutter/material.dart';
import 'package:socialnetwork/screens/Messages/Messages.dart';
import 'package:socialnetwork/screens/Profile/Profile.dart';
import 'package:socialnetwork/screens/Wall/Wall.dart';
import 'package:socialnetwork/screens/WelcomePage/WelcomePage.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(fontFamily: 'Circe'),
//      home: WelcomePage(),
      initialRoute: '/Welcome',
      routes: {
        '/Wall': (context) => Wall(),
        '/Welcome': (context) => WelcomePage(),
        '/Profile': (context) => Profile(),
        '/Messages': (context) => Messages(),

      },
    );
  }
}
