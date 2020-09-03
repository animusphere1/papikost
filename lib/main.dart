import 'package:flutter/material.dart';
import 'package:skripsi/ui/screen/onboardscreen/onboardscreen1.dart';
import 'ui/screen/onboardscreen/onboardscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: OnBoardScreen(),
    );
  }
}
