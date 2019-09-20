import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
// import 'package:myflutter/main_bak.dart';
// import './widget/SelfText.dart'; //基础文本
// import './widget/Somefonts.dart'; //一行文本
// import './widget/SelfContainer.dart'; //块样式
// import './widget/SelfImage.dart'; //net图片
// import './widget/SelfImageAsset.dart'; //本地图片
// import './widget/SelfImageContainer.dart'; //带样式的图片
// import './widget/MyHomePage.dart'; //计数器模型
import './listData.dart';

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
  List<Widget> _getData(){
   var tempList = listData.map((value){
     return ListTile(
       leading: Image.network(value['imageUrl']),
       title: Text(value['title']),
       subtitle: Text(value['author']),
     );
   });
   return tempList.toList();
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: this._getData(),
    );
  }
}
