import 'package:flutter/material.dart';
import 'package:skripsi/ui/constant/constantcolor.dart';

class OnBoardScreen1 extends StatefulWidget {
  @override
  _OnBoardScreen1State createState() => _OnBoardScreen1State();
}

class _OnBoardScreen1State extends State<OnBoardScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: onboardBackgroundColor,
      ),
    );
  }
}
