// import 'package:flutter/material.dart';
// import 'package:skripsi/test/text.dart';

// class Coba extends StatefulWidget {
//   @override
//   _CobaState createState() => _CobaState();
// }

// class _CobaState extends State<Coba> {
//   bool showFirst = true;
//   GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();
//   var controller;

//   @override
//   Widget build(BuildContext context) {
//     String nama;
//     return WillPopScope(
//       onWillPop: () {},
//       child: Scaffold(
//         key: _scaffoldkey,
//         appBar: AppBar(),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             children: <Widget>[
//               if (showFirst)
//                 MyTextField(
//                   key: ValueKey(1),
//                   angka: 3,
//                 ),
//               if (showFirst)
//                 MyTextField(
//                   angka: 1,
//                 ),
//               MyTextField(
//                 key: ValueKey(2),
//               ),
//               if (showFirst)
//                 TextField(
//                   onChanged: (name) {
//                     setState(() {
//                       nama = name;
//                     });
//                   },
//                   key: ValueKey(nama),
//                 ),
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: () {},
//         ),
//       ),
//     );
//   }
// }
