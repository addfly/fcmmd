import 'package:flutter/material.dart';

class User extends StatefulWidget {
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Text("home",style: TextStyle(fontSize: 30),),
    );
  }
}