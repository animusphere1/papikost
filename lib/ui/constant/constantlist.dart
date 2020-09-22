import 'dart:math';
import 'package:flutter/material.dart';
import 'package:skripsi/ui/screen/onboardscreen/onboardscreenPage.dart';

List<OnBoardScreenPage> onboardingscreenlist = [
  OnBoardScreenPage(),
  OnBoardScreenPage(),
];

List<int> cobadoang = [1, 2, 55, 40, 20, 30, 40];

int ambilangka() {
  cobadoang.sort((a, b) => a.compareTo(b));
  print(cobadoang);
  return cobadoang[Random().nextInt(7)];
}

Widget onboardingscreen(int i) {
  return onboardingscreenlist[i];
}
