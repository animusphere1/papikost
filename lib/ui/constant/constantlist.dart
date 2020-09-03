import 'package:flutter/material.dart';
import 'package:skripsi/ui/screen/onboardscreen/onboardscreen1.dart';
import 'package:skripsi/ui/screen/onboardscreen/onboardscreen2.dart';

List<Widget> onboardingscreenlist = [
  OnBoardScreen1(),
  OnBoardScreen2(),
  OnBoardScreen2(),
];

Widget onboardingscreen(int i) {
  return onboardingscreenlist[i];
}
