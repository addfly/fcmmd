import 'package:flutter/material.dart';

class SelfContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SelfContainer"),),
      body: Container(
        height: 200,
        width: 200,
        margin: EdgeInsets.fromLTRB(100, 200, 100, 200),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.green
        ),
        child: Text("Son"),
      ),
    );
  }
}