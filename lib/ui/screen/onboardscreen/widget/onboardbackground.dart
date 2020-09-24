import 'package:flutter/material.dart';
import '../onboardscreenPage.dart';

class OnBoardBackground extends StatelessWidget {
  const OnBoardBackground({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final OnBoardScreenPage widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.bgcolor,
    );
  }
}
