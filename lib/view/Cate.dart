import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
class Cate extends StatefulWidget {
  @override
  _CateState createState() => _CateState();
}

class _CateState extends State<Cate> {
  List _list=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(child: Icon(Icons.search),
      onPressed: (){
        diol();
      },),
      body: ListView.builder(
        itemCount: _list.length,
        itemBuilder: (BuildContext context,int i){
          return Text('${_list[i]["nm"]}');
        },
      ),
    );
  }

  diol() async{
  Response response = 
    await Dio().get("http://m.maoyan.com/ajax/movieOnInfoList");
    Map<String,dynamic> responseData=json.decode(response.toString());
    // print(response.data["movieList"][3]);
    setState((){
      this._list=responseData["movieList"];
    });
}
}

