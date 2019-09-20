import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:flutter/painting.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;
  List tabs = ["正在热映", "即将上映"];
  @override
  void initState() {
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          // color: Colors.blue,
          child: Text(
            "北京",
            style: TextStyle(fontSize: 20),
          ),
          padding: EdgeInsets.fromLTRB(15, 18, 0, 0),
        ),
        title: TabBar(
          controller: _tabController,
          tabs: tabs
              .map((e) => Tab(
                    text: e,
                  ))
              .toList(),
          labelStyle: TextStyle(fontSize: 20),
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(padding: EdgeInsets.only(right: 20)),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((e) {
          if (e == "正在热映") {
            return Container(
              child: ShowMovie(),
            );
          } else {
            return Container(
              child: LaterMovie(),
            );
          }
        }).toList(),
      ),
    );
  }
}

class ShowMovie extends StatefulWidget {
  @override
  _ShowMovieState createState() => _ShowMovieState();
}

class _ShowMovieState extends State<ShowMovie> {
  List _list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getmessage();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemExtent: 110.0,
        itemCount: _list.length,
        itemBuilder: (BuildContext contest, int i) {
          var imgUrl = _list[i]["img"].replaceFirst("w.h", "100.50");
          var hot;
          if (_list[i]["sc"] == 0) {
            hot = "暂无评分";
          } else {
            hot = "观众评${_list[i]["sc"]}";
          }
          var star = "主演：${_list[i]["star"]}";
          var look = "${_list[i]["showInfo"]}";

          return ListTile(
            // leading: Image.network(imgUrl),
            leading: Container(
                // width: 75,
                // height: 200,
                // color: Colors.yellow,
                child: Column(
                  children: <Widget>[
                    Image.network(
                      imgUrl,
                      // fit: BoxFit.cover,
                    ),
                  ],
                )
                //  Image.network(
                //   imgUrl,
                //   // fit: BoxFit.fitHeight,
                // ),
                ),
            title: Text(
              '${_list[i]["nm"]}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 20),
            ),
            // subtitle:Text.rich(TextSpan(
            //   children: [
            //     TextSpan(
            //       text: "$hot",
            //     ),
            //     TextSpan(
            //       text: "$star"
            //     ),
            //     TextSpan(
            //       text: "$look"
            //     ),
            //   ]
            // )),
            isThreeLine: true,
            subtitle: Container(
              child: Column(
                children: <Widget>[
                  Text(
                    hot,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    star,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    look,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
//             Text(
//               '''$hot
// $star
// $look''',
//               maxLines: 3,
//               overflow: TextOverflow.ellipsis,
//             ),
            trailing: Container(
                width: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      color: Colors.red[600],
                      child: Text("购票",
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {},
                    ),
                  ],
                )
                //
                ),
          );
        },
      ),
    );
  }

  getmessage() async {
    Response response =
        await Dio().get("http://m.maoyan.com/ajax/movieOnInfoList");
    Map<String, dynamic> responseData = json.decode(response.toString());
    // print(response.data["movieList"]["img"]);
    if (mounted) {
      setState(() {
        this._list = responseData["movieList"];
      });
    }
  }
}

class LaterMovie extends StatefulWidget {
  LaterMovie({Key key}) : super(key: key);
  @override
  _LaterMovieState createState() => _LaterMovieState();
}

class _LaterMovieState extends State<LaterMovie> {
  List data = new List();
  var baseUrl =
      "http://m.maoyan.com/ajax/mostExpected?ci=1&limit=10&offset=0&token=";
  _LaterMovieState() {
    HttpClient client = new HttpClient();
    client
        .getUrl(Uri.parse("${this.baseUrl}"))
        .then((HttpClientRequest request) {
      return request.close();
    }).then((HttpClientResponse response) async {
      var json = await response.transform(utf8.decoder).join();
      if (mounted) {
        setState(() {
          data.addAll(jsonDecode(json)["coming"]);
        });
      }
      // print(json);
    }).catchError((onError) {
      print(onError.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: this.data.length,
      itemBuilder: (context, index) {
        var img = this.data[index]["img"].replaceFirst("w.h", "158.180");
        return ListTile(
          leading: Image.network(img),
          title: Text("data"),
          subtitle: Text("data"),
          trailing: Icon(Icons.chevron_right),
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }
}
