import 'package:flutter/material.dart';

class Somefonts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("文字页面")),
      body:Center(
        child: Text("喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵喵",
        style: TextStyle(
          color: Colors.red,
          fontSize: 30,
          letterSpacing: 2,
          fontWeight:FontWeight.w800
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        ),
      ),
    );
  }
}