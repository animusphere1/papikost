import 'dart:math';
import 'package:flutter/material.dart';
import 'package:skripsi/ui/constant/constantcolor.dart';
import 'package:skripsi/ui/screen/onboardscreen/coba.dart';
import 'package:skripsi/ui/screen/onboardscreen/coba.dart';
import 'package:skripsi/ui/screen/onboardscreen/onboardscreenPage.dart';

final List<Widget> onboardingscreenlist = [
  Coba(),
  OnBoardScreenPage(
    bgcolor: onboardBackgroundColor,
  ),
  OnBoardScreenPage(
    bgcolor: onboardBackgroundColor,
  ),
  OnBoardScreenPage(
    bgcolor: onboardBackgroundColor,
  ),
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
