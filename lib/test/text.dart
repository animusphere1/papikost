import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  var angka;
  MyTextField({Key key, this.angka}) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: controller,
        ),
        Text(widget.key.toString()),
      ],
    );
  }
}
