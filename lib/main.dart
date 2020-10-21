import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skripsi/ui/screen/onboardscreen/onboardscreenPage.dart';
import 'core/viewmodel/onboard_provider.dart';
import 'ui/screen/onboardscreen/onboardscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  var hasil;

  @override
  initState() {
    super.initState();
    getPref();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => OnBoardProvider(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          accentColor: Colors.transparent,
        ),
        debugShowCheckedModeBanner: false,
        home: hasil == null ? OnBoardScreenPage() : OnBoardScreen(),
      ),
    );
  }

  getPref() {
    print(hasil);
    setState(() {
      hasil = 1;
    });
  }
}
