import 'dart:math';

import 'package:flutter/material.dart';
import 'package:skripsi/ui/screen/onboardscreen/onboardscreen1.dart';

List<OnBoardScreen1> onboardingscreenlist = [
  OnBoardScreen1(
    panjang: cobadoang.length,
  ),
  OnBoardScreen1(),
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
