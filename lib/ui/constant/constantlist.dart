import 'package:flutter/material.dart';
import 'package:skripsi/ui/screen/onboardscreen/onboardscreen1.dart';

List<OnBoardScreen1> onboardingscreenlist = [
  OnBoardScreen1(
    panjang: cobadoang.length,
  ),
  OnBoardScreen1(),
];

List<int> cobadoang = [1, 2];

Widget onboardingscreen(int i) {
  return onboardingscreenlist[i];
}
