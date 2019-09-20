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
        ListTile(
          leading: Image.network("https://imgs.aixifan.com/xQvscBkKaq-Freaiu-zIzuy2-yAzIb2-3YJnyq.png?imageView2/1/w/508/h/260/q/100",
          
          ),
          title: Text(
            "美国少年假报警乱给地址，警察击毙28岁无辜男子",
            style: TextStyle(fontSize: 18),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            "据“今日美国”网站9月15日报道，美国19岁玩游戏少年卡西维纳（Casey Viner），因策划打假报警电话导致一名堪萨斯州男子被警察击毙身亡，于9月13日被判入狱15个月。",
            style: TextStyle(fontSize: 14),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.search,
            size: 30,
          ),
          title: Text(
            "美国少年假报警乱给地址，警察击毙28岁无辜男子",
            style: TextStyle(fontSize: 18),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            "据“今日美国”网站9月15日报道，美国19岁玩游戏少年卡西维纳（Casey Viner），因策划打假报警电话导致一名堪萨斯州男子被警察击毙身亡，于9月13日被判入狱15个月。",
            style: TextStyle(fontSize: 14),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.web,
            size: 30,
          ),
          title: Text(
            "美国少年假报警乱给地址，警察击毙28岁无辜男子",
            style: TextStyle(fontSize: 18),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            "据“今日美国”网站9月15日报道，美国19岁玩游戏少年卡西维纳（Casey Viner），因策划打假报警电话导致一名堪萨斯州男子被警察击毙身亡，于9月13日被判入狱15个月。",
            style: TextStyle(fontSize: 14),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.edit,
            size: 30,
          ),
          title: Text(
            "美国少年假报警乱给地址，警察击毙28岁无辜男子",
            style: TextStyle(fontSize: 18),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            "据“今日美国”网站9月15日报道，美国19岁玩游戏少年卡西维纳（Casey Viner），因策划打假报警电话导致一名堪萨斯州男子被警察击毙身亡，于9月13日被判入狱15个月。",
            style: TextStyle(fontSize: 14),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.email,
            size: 30,
          ),
          title: Text(
            "美国少年假报警乱给地址，警察击毙28岁无辜男子",
            style: TextStyle(fontSize: 18),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            "据“今日美国”网站9月15日报道，美国19岁玩游戏少年卡西维纳（Casey Viner），因策划打假报警电话导致一名堪萨斯州男子被警察击毙身亡，于9月13日被判入狱15个月。",
            style: TextStyle(fontSize: 14),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
