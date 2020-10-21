// import 'package:flutter/material.dart';

// class MyTextField extends StatefulWidget {
//   var angka;
//   MyTextField({Key key, this.angka}) : super(key: key);

//   @override
//   _MyTextFieldState createState() => _MyTextFieldState();
// }

// class _MyTextFieldState extends State<MyTextField> {
//   final controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         TextField(
//           controller: controller,
//         ),
//         Text(widget.key.toString()),
//       ],
//     );
//   }
// }

// import 'dart:convert';

// List<Map<String, List<Map<String, dynamic>>>> nama = [
//   {
//     'nama': [
//       {'sekolah': 1, 'sekolahaja': '3'},
//       {'sekolah': 2, 'sekolahaja': '5'}
//     ],
//     'apasaja': [
//       {'sekolahsaya' : 1},
//     ],
//   },
//   {
//     'nama': [
//       {'sekolah': '2'},
//       {'sekolahaja': '2', 'nama': 'fajar'},
//       {'sekolah': '2'}
//     ]
//   }
// ];

// List<Map<String, dynamic>> nama2 = [
//   {'nama': 'nama1'},
//   {'nama': 'nama1'},
//   {'nama': 'nama2'},
//   {'nama': 'nama3'},
// ];

// class Sekolah {
//   String nama;

//   Sekolah({this.nama});

//   factory Sekolah.fromMap(Map<String, dynamic> map) {
//     return Sekolah(
//       nama: map['nama'],
//     );
//   }
// }

// void main(List<String> args) {
//   var sekolah = List<Sekolah>();

//   var ubah =
//       nama[1]['nama'].where((element) => element['sekolahaja'] == "2").toList();

//   var ubah2 = nama2.where((element) => element['nama'] == 'nama1');

//   // print(nama[0]['nama'][1]['sekolah']);
//   ubah2.forEach((element) {
//     print(element);
//     sekolah.add(Sekolah.fromMap(element));
//   });

//   print(sekolah[0].nama);

//   print(ubah2);
//   print(ubah[0]['nama']);
//   print(nama[0]['nama'][0]['sekolah']);
// }

//  Widget _coba() {
//     return Container(
//       color: Colors.amber,
//       width: 120,
//       height: 150,
//       child: Material(
//         type: MaterialType.transparency,
//         color: Colors.transparent,
//         child: InkWell(
//           borderRadius: BorderRadius.circular(5),
//           child: Padding(
//             padding: const EdgeInsets.all(7),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   'coba1 saja apa asajaa , dan dimana saja anada berada kami siap membaantu',
//                   textAlign: TextAlign.justify,
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 13,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   "Coba 2",
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 10,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Map<String, dynamic> nama = {"test 1": "1", "test 2": "1", "test 3": "1"};

//   Map<String, dynamic> nama2 = {};

//   List datas = List();

//   namaHasil() {
//     nama.forEach((key, value) {
//       nama2['id'] = key;
//       nama2['key'] = value;

//       print(key);

//       datas.add({'id': key});

//       // nama2.forEach((key, value) {

//       // });
//     });
//     print(datas[0]);
//   }
