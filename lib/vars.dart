import 'package:flutter/material.dart';

class User {
  User({this.avatar, this.firstName, this.lastName, this.username});

  Image avatar;
  String firstName;
  String lastName;
  String username;
}


var userData = User(
    avatar: Image.asset('assets/images/ava1.png'),
    firstName: 'Klous',
    lastName: 'Santa',
    username: '@gangsta.clous');
