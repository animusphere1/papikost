import 'package:flutter/material.dart';
import 'package:skripsi/ui/constant/constantcolor.dart';

class OnBoardScreen1 extends StatefulWidget {
  final bool status;
  final int panjang;

  const OnBoardScreen1({this.status, this.panjang});
  @override
  _OnBoardScreen1State createState() => _OnBoardScreen1State();
}

class _OnBoardScreen1State extends State<OnBoardScreen1> {
  var angka;

  //initial
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: onboardBackgroundColor,
      child: Center(child: Text(angka.toString())),
    );
  }
}
