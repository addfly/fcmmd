import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
    return ListView(
      padding: EdgeInsets.all(13),
      children: <Widget>[
        Image.network("https://imgs.aixifan.com/xQvscBkKaq-Freaiu-zIzuy2-yAzIb2-3YJnyq.png?imageView2/1/w/508/h/260/q/100",),
        Container(
          child: Text("俄罗斯天花病毒存放实验室突然爆炸，官方回应：无污染威胁",style: TextStyle(fontSize: 18),maxLines: 1,overflow: TextOverflow.ellipsis,),
        height:60,
        padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
        ),
        Image.network("https://imgs.aixifan.com/xQvscBkKaq-Freaiu-zIzuy2-yAzIb2-3YJnyq.png?imageView2/1/w/508/h/260/q/100",),
        Container(
          child: Text("俄罗斯天花病毒存放实验室突然爆炸，官方回应：无污染威胁",style: TextStyle(fontSize: 18),maxLines: 1,overflow: TextOverflow.ellipsis,),
        height:60,
        padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
        ),
        Image.network("https://imgs.aixifan.com/xQvscBkKaq-Freaiu-zIzuy2-yAzIb2-3YJnyq.png?imageView2/1/w/508/h/260/q/100",),
        Container(
          child: Text("俄罗斯天花病毒存放实验室突然爆炸，官方回应：无污染威胁",style: TextStyle(fontSize: 18),maxLines: 1,overflow: TextOverflow.ellipsis,),
        height:60,
        padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
        ),
        Image.network("https://imgs.aixifan.com/xQvscBkKaq-Freaiu-zIzuy2-yAzIb2-3YJnyq.png?imageView2/1/w/508/h/260/q/100",),
        Container(
          child: Text("俄罗斯天花病毒存放实验室突然爆炸，官方回应：无污染威胁",style: TextStyle(fontSize: 18),maxLines: 1,overflow: TextOverflow.ellipsis,),
        height:60,
        padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
        ),
        Image.network("https://imgs.aixifan.com/xQvscBkKaq-Freaiu-zIzuy2-yAzIb2-3YJnyq.png?imageView2/1/w/508/h/260/q/100",),
        Container(
          child: Text("俄罗斯天花病毒存放实验室突然爆炸，官方回应：无污染威胁",style: TextStyle(fontSize: 18),maxLines: 1,overflow: TextOverflow.ellipsis,),
        height:60,
        padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
        ),
      ],
    );
  }
}
