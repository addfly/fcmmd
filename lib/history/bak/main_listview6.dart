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
    return [
      ListTile(
        title: Text("俄罗斯卫生监督机构部门表示，此次爆炸事件乃是实验室内的一个燃气瓶意外发生爆炸并引发火灾，"),
      ),
      ListTile(
        title:Text("这场火灾造成了实验室内部分玻璃损毁，但建筑物本身结构完好无损，因此出一名工人三度烧伤外并无其他人员伤亡。"),
      ),
      ListTile(
        title:Text("对于媒体关注的天花病毒是否泄漏并扩散的问题，相关部门声明称此次事件并未造成任何天花病毒污染威胁。"),
      )
    ];
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: this._getData(),
    );
  }
}
