import 'package:flutter/material.dart';
// import 'package:myflutter/main_bak.dart';
// import './widget/SelfText.dart'; //基础文本
// import './widget/Somefonts.dart'; //一行文本
// import './widget/SelfContainer.dart'; //块样式
// import './widget/SelfImage.dart'; //net图片
// import './widget/SelfImageAsset.dart'; //本地图片
// import './widget/SelfImageContainer.dart'; //带样式的图片
// import './widget/MyHomePage.dart'; //计数器模型

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  // 函数返回值类型Widget
  Widget build(BuildContext context) {
    return MaterialApp(
      // title:'this is One',
      theme: ThemeData(primarySwatch: Colors.red),
      // home:SelfText(),
      // home:Somefonts(),
      // home:SelfContainer(),
      // home:SelfImage(),
      // home:SelfImageAsset(),
      // home:SelfImageContainer(),
      // home:MyHomePage(title:"计数器",),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "AcFun",
            style: TextStyle(fontSize: 40),
          ),
        ),
        body: HomeContent(),
      ),
    );
  }
}


class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center( 
      child:Container(
        child:Image
          .network("http://imgs.aixifan.com/test-douw/2019_6_15/1563185465730.jpg?imageView2/1/w/375/h/180",
          alignment: Alignment.topCenter
          // color: Colors.red,
          // colorBlendMode: BlendMode.screen,
          // fit: BoxFit.cover,
          ),
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(
              width: 2,
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.circular(10)
          ),
          // color: Colors.red,
      )
    );
  }
}