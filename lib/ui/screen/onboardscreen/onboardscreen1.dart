import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:skripsi/ui/constant/constantcolor.dart';

class OnBoardScreen1 extends StatefulWidget {
  final bool status;
  final int panjang;

  const OnBoardScreen1({this.status, this.panjang});
  @override
  _OnBoardScreen1State createState() => _OnBoardScreen1State();
}

class _OnBoardScreen1State extends State<OnBoardScreen1>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  TickerProvider _ticker;

  @override
  void initState() {
    super.initState();

    // halamanswapsendiri();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: animation.value,
        width: animation.value,
        color: onboardBackgroundColor,
        child: Center(
          child: widget.panjang != null
              ? Text(widget.panjang.toString())
              : Text("Data nya Kosong mas"),
        ),
      ),
    );
  }
}
