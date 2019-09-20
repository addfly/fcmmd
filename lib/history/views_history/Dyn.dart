import 'package:flutter/material.dart';

class Dyn extends StatefulWidget {
  @override
  _DynState createState() => _DynState();
}

class _DynState extends State<Dyn> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Text("home",style: TextStyle(fontSize: 30),),
    );
  }
}