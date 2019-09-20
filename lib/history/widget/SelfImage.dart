import 'package:flutter/material.dart';

class SelfImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("SelfImage"),),
      body:Center(
        child: Image(
          image: NetworkImage("https://imgs.aixifan.com/MkPAl7kvmG-VJbyYv-ayq6Jz-iIbuq2-J3qIbm.jpg?imageView2/1/w/508/h/260/q/100"),
        ),
      )
    );
  }
}