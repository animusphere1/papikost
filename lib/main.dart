import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ui/screen/onboardscreen/onboardscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: OnBoardScreen(),
    );
  }
}
