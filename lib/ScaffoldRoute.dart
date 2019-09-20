import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './view/Cate.dart';
import './view/Cloud.dart';
import './view/Home.dart';

class ScaffoldRoute extends StatefulWidget {
  // Tabs({Key key}) : super(key: key);
  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<ScaffoldRoute> {
  int _current = 0;
  List _pageList = <Widget>[
    Home(),
    Cate(),
    Cloud(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle:true,
          title:Text("猫眼电影")
        ),
        body: this._pageList[this._current],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._current,
          onTap: (int index) {
            setState(() {
              this._current = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.movie), title: Text("电影")),
            BottomNavigationBarItem(
                icon: Icon(Icons.image), title: Text("影院")),
            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("我的")),
            // BottomNavigationBarItem(icon: Icon(Icons.people),title: Text("我的"))
          ],
        ),
      ),
    );
  }
}
