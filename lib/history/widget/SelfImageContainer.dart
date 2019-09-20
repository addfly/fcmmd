import 'package:flutter/material.dart';

class SelfImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("带样式的图片"),),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color:Colors.green
          ),
          child: Image(
            image:NetworkImage("https://p1.hoopchina.com.cn/gdc/weibo/pic/2fb5a7d26180aa48c23a8b4f413cfbc8.gif"),
            // fit: BoxFit.cover,//全面铺开,占满，不缩放，多余就剪切
            // fit: BoxFit.fill,//撑满，会缩放
            // fit:BoxFit.fitHeight,//高度撑满，不缩放
            // fit:BoxFit.fitWidth,//宽度撑满，不缩放
            fit:BoxFit.contain,
          ),
        ),
      ),
    );
  }
}