import 'package:flutter/material.dart';
import 'widget/widgetsonboard.dart';

class OnBoardScreenPage extends StatefulWidget {
  final bgcolor;

  const OnBoardScreenPage({this.bgcolor});

  @override
  _OnBoardScreenPageState createState() => _OnBoardScreenPageState();
}

class _OnBoardScreenPageState extends State<OnBoardScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        OnBoardBackground(widget: widget),
      ],
    );
  }
}
