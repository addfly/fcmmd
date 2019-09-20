// import 'package:flutter/material.dart';
// // import './Category.dart';
// import '../views/Catelist.dart';
// import '../views/Dyn.dart';
// import '../views/User.dart';
// import '../views/Home.dart';

// class HomeContent extends StatefulWidget {
//   @override
//   _HomeContentState createState() => _HomeContentState();
// }

// class _HomeContentState extends State<HomeContent> {
//   int _currentIndex = 0;
//   List _pageList = <Widget>[
//     Home(),
//     Catelist(),
//     Dyn(),
//     User(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "AcFun",
//           // style: TextStyle(fontSize: 40),
//         ),
//       ),
//       body: this._pageList[this._currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//           currentIndex: this._currentIndex,
//           onTap: (int index) {
//             setState(() {
//               this._currentIndex = index;
//             });
//           },
//           fixedColor: Colors.blue,
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               title: Text("首页"),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               title: Text("分类"),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               title: Text("动态"),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               title: Text("我的"),
//             )
//           ]),
//     );
//   }
// }
