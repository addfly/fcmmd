import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.title}'),
      ),
      body:
        Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: NetworkImage(
                    "https://imgs.aixifan.com/MkPAl7kvmG-VJbyYv-ayq6Jz-iIbuq2-J3qIbm.jpg?imageView2/1/w/508/h/260/q/100"),
              ),
              
              Text("点个赞吧！🐂🍺",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    letterSpacing: 5,
                  )),
              Text(
                "$_counter",
                style: TextStyle(
          
                  fontSize: 33,
                  color: Colors.green,
                ),
              ),
              IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: () {
                  _incrementCounter();
                },
              )
            ],
          ),
        ),
      floatingActionButton: FloatingActionButton(
        tooltip: "点击一次加1",
        child: Icon(Icons.add),
        onPressed: () {
          _incrementCounter();
        },
      ),
    );
  }
}

// class Img extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//     );
//   }
// }
