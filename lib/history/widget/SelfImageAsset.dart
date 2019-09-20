import 'package:flutter/material.dart';

class SelfImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SelfImageAsset"),),
      body:Center(
        child: Image(
          image: AssetImage("images/kamanlaida.jpg"),
        ),
      )
    );
  }
}