import 'package:flutter/material.dart';
// import './widget/MyHomePage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "one demo",
      theme: ThemeData(
        primarySwatch:Colors.red, 
      ),
    );
  }
}